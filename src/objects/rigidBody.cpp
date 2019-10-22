#include "rigidBody.h"
#include "elementConversions.cpp"



rigidBody::rigidBody(std::string tag):mySpin(1,&myQueue)
{
    this->tag = tag;
    // drone or obstacle
    this->controllable = true;

    // look for drone under tag namespace then vrpn output
    std::string optiTop = "/vrpn_client_node/" + tag + "/pose";

    

    // 1000 seconds on ground before timeout engaged 
    resetTimeout(1000.0f);

    droneHandle = ros::NodeHandle();

    std::string ApiTopic = tag + "/apiUpdate";
    ApiPublisher = droneHandle.advertise<multi_drone_platform::apiUpdate> (ApiTopic, 20);
    ApiSubscriber = droneHandle.subscribe(ApiTopic, 20, &rigidBody::apiCallback, this);

    droneHandle.setCallbackQueue(&myQueue);
    
    motionSub = droneHandle.subscribe<geometry_msgs::PoseStamped>(optiTop, 10,&rigidBody::addMotionCapture, this);
    
    ROS_INFO("Subscribing to %s for motion capture", optiTop.c_str());   
}

rigidBody::~rigidBody()
{
    ROS_INFO("Shutting down rigid body %s", tag.c_str());
}

void rigidBody::set_state(const std::string& state)
{
    this->State = state;
    droneHandle.setParam("mdp/" + this->tag + "/", state);
}

bool rigidBody::getControllable()
{
    return this->controllable;
}

std::string rigidBody::getName()
{
    return this->tag;
}

geometry_msgs::Vector3 rigidBody::vec3PosConvert(geometry_msgs::Pose& pos)
{
    geometry_msgs::Vector3 returnPos;
    returnPos.x = pos.position.x;
    returnPos.y = pos.position.y;
    returnPos.z = pos.position.z;
    return returnPos;
}
float rigidBody::getYaw(geometry_msgs::Pose& pos)
{
    return mdp_conversions::toEuler(pos.orientation).Yaw;
} 
returnPos rigidBody::getCurrPos()
{
    // returns 0 duration
    float duration = 0;
    return {lastUpdate, vec3PosConvert(currPos), getYaw(currPos)};
}

returnVel rigidBody::getCurrVel()
{
    float duration = 0;
    return {lastUpdate, currVel.linear, currVel.angular.z};
}

returnPos rigidBody::getDesPos()
{
    return {lastUpdate, vec3PosConvert(desPos), getYaw(desPos)};
}

void rigidBody::setDesPos(geometry_msgs::Vector3 pos, float yaw,
float duration, bool relative, bool constHeight)
{
    set_state("MOVING");
    // manage relative x, y values 
    if (relative)
    {
        desPos.position.x = currPos.position.x + pos.x;
        desPos.position.y = currPos.position.y + pos.y;
    }
    else
    {
        desPos.position.x = pos.x;
        desPos.position.y = pos.y;
    }

    // manage relative z values 
    if(constHeight)
    {
        desPos.position.z = currPos.position.z + pos.z;
    }
    else
    {
        desPos.position.z = pos.z;
    }
    
    // @TODO: need to manage orientation
    this->onSetPosition(desPos, yaw, duration);
    
    ROS_INFO("Set height: %f", pos.z);
    resetTimeout(duration);
}

returnVel rigidBody::getDesVel()
{
    return {lastCommandSet, desVel.linear, desVel.angular.z};
}

void rigidBody::setDesVel(geometry_msgs::Vector3 vel, float yawRate, 
float duration, bool relative, bool constHeight)
{
    set_state("MOVING");
    // manage relative x, y values 
    if (relative)
    {
        desVel.linear.x = currVel.linear.x + vel.x;
        desVel.linear.y = currVel.linear.y + vel.y;
    }
    else
    {
        desVel.linear.x = vel.x;
        desVel.linear.y = vel.y;
    }

    // manage relative z values 
    if(constHeight)
    {
        desVel.linear.z = currVel.linear.z + vel.z;
    }
    else
    {
        desVel.linear.z = vel.z;
    }

    desVel.angular.z = yawRate;
    
    // onVelocity command
    this->onSetVelocity(desVel, duration);

    this->resetTimeout(duration);
}

geometry_msgs::Vector3 rigidBody::getHomePos()
{
    return homePos;
}   

void rigidBody::setHomePos(geometry_msgs::Vector3 pos, bool relative)
{
    // z coord does not matter for home position, will be set in each case
    if (relative)
    {
        homePos.x = currPos.position.x + pos.x;
        homePos.y = currPos.position.y + pos.y;
    }
    else
    {
        homePos.x = pos.x;
        homePos.y = pos.y;
    }
    homePos.z = 0.0f;
}

void rigidBody::calcVel()
{
    geometry_msgs::PoseStamped lastPos = motionCapture.front();
    motionCapture.erase(motionCapture.begin());
    geometry_msgs::PoseStamped firstPos = motionCapture.front();
    currVel = mdp_conversions::calcVel(lastPos,firstPos);
    // ROS_INFO("%s linear velocity [x: %f,y: %f,z: %f]", tag.c_str(), currVel.linear.x, currVel.linear.y, currVel.linear.z);
}

void rigidBody::addMotionCapture(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
    if(motionCapture.size() == 0){
        homePos.x = msg->pose.position.x;
        homePos.y = msg->pose.position.y;
        homePos.z = msg->pose.position.z;

        ROS_INFO("HOME POS: [%f, %f, %f]", homePos.x, homePos.y, homePos.z);
     }
    motionCapture.push_back(*msg);
    if (motionCapture.size() >= 2){calcVel();}
    currPos = motionCapture.front().pose;
    // ROS_INFO("Current Position: x: %f, y: %f, z: %f",currPos.position.x, currPos.position.y, currPos.position.z);
    // @TODO: Orientation implementation

    this->lastUpdate = ros::Time::now();
    this->onMotionCapture(msg);
}

geometry_msgs::PoseStamped rigidBody::getMotionCapture()
{
    return motionCapture.front();
}

void rigidBody::update(std::vector<rigidBody*>& rigidBodies)
{
    

    if (ros::Time::now().toSec() >= nextTimeoutGen) {
        if (State == "LANDING" || State == "LANDED") {
            set_state("LANDED");
            resetTimeout(100);
        } else {
            if (State != "IDLE") {
                /* Go to hover */
                geometry_msgs::Vector3 currPosVec;
                currPosVec.x = currPos.position.x;
                currPosVec.y = currPos.position.y;
                currPosVec.z = 0.0f;
                // currPosVec.z = currPos.position.z;
                setDesPos(currPosVec, 0.0, TIMEOUT_HOVER + 1.0, false, true);
                set_state("IDLE");
                nextTimeoutGen = ros::Time::now().toSec() + TIMEOUT_HOVER;
            } else {
                /* land drone because timeout */
                ROS_WARN("Timeout stage 2");
                this->land();
            }
        }
    }
    if (State == "IDLE")
    {
        handleCommand();
    }


    this->onUpdate();
}

void rigidBody::apiCallback(const multi_drone_platform::apiUpdate& msg)
{
    this->commandQueue.clear();
    this->commandQueue.push_back(msg);
}

void rigidBody::handleCommand(){
    ROS_INFO_STREAM("%s API Callback" << tag.c_str());
    
    if (commandQueue.size() > 0)
    {
        multi_drone_platform::apiUpdate msg = this->commandQueue.front();
        multi_drone_platform::apiUpdate landMsg;
        switch(APIMap[msg.msg_type]) {
            /* VELOCITY */
            case 0:
                setDesVel(msg.posvel, msg.yawVal, msg.duration, msg.relative, msg.constHeight);
                break;
            /* POSITION */
            case 1:  
                setDesPos(msg.posvel, msg.yawVal, msg.duration, msg.relative, msg.constHeight);
                break;
            /* TAKEOFF */
            case 2:
                takeoff(msg.posvel.z, msg.duration);
                break;
            /* LAND */
            case 3: 
                if (msg.duration != 0.0f){ land(msg.duration); }
                else { land(); }
                break;
            /* HOVER */
            case 4:
                setDesPos(msg.posvel, msg.yawVal, msg.duration, msg.relative, true);
                break;
            /* EMERGENCY */
            case 5: 
                emergency();
                break;
            /* SET_HOME */
            case 6:
                setHomePos(msg.posvel, msg.relative);
                break;
            /* GOTO_HOME */
            case 8:
                setDesPos(homePos, msg.yawVal,msg.duration, false, true);
                landMsg.msg_type = "LAND";
                landMsg.duration = 2.0f;
                enqueueCommand(landMsg);
                break;
            default:
                ROS_ERROR_STREAM("The API command, '" << msg.msg_type << "' is not valid.");
            break;
        }
        dequeueCommand();
    }
    
}

void rigidBody::enqueueCommand(multi_drone_platform::apiUpdate command)
{
    commandQueue.push_back(command);
}

void rigidBody::dequeueCommand()
{
    auto it = commandQueue.begin(); 
    commandQueue.erase(it);
}

void rigidBody::emergency()
{
    this->set_state("EMERGENCY");
    this->onEmergency();
}

void rigidBody::land(float duration)
{
    this->set_state("LANDING");
    this->onLand(duration);
    resetTimeout(duration);
}

void rigidBody::takeoff(float height, float duration)
{
    this->set_state("TAKING OFF");
    this->onTakeoff(height, duration);
    resetTimeout(duration);
}

void rigidBody::resetTimeout(float timeout)
{
    ROS_INFO("Reset timer to ~%f seconds", timeout);
    timeout = timeout - 0.2f;
    timeout = std::max(timeout, 0.0f);
    nextTimeoutGen = ros::Time::now().toSec() + timeout;
    lastCommandSet = ros::Time::now();
}