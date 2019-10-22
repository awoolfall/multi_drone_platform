#include "../objects/rigidBody.h"

class object : public rigidBody
{
private:

public:
    object(std::string tag) : rigidBody(tag)
    {

    };

    ~object() 
    {

    }

    void onSetPosition(geometry_msgs::Pose pos, float yaw, float duration) override
    {

    }

    void onSetVelocity(geometry_msgs::Twist vel, float duration) override
    {

    }

    void onMotionCapture(const geometry_msgs::PoseStamped::ConstPtr& msg)
    {

    }
    
    void onUpdate() override
    {

    }

    void onTakeoff(float height, float duration) override
    {

    }

    void onLand(float duration) override
    {

    }

    void onEmergency() override
    {

    }
};


