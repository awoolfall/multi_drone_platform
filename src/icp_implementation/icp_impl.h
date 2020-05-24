#ifndef SRC_ICP_IMPL_H
#define SRC_ICP_IMPL_H
#include "../../include/rigidbody.h"
#include <visualization_msgs/Marker.h>
#include <geometry_msgs/Point.h>
#include "kd_tree_3d.h"

class icp_impl {
public:
    explicit icp_impl(const std::vector<rigidbody*>* rigidbodyListPtr, ros::NodeHandle& nodeHandle);
    ~icp_impl();

private:
    const std::vector<rigidbody*>* rigidbodyList = nullptr;
    ros::Subscriber markerCloudSubscriber;

    void marker_cloud_callback(const visualization_msgs::Marker::ConstPtr& msg);

    static geometry_msgs::Pose perform_icp(const std::vector<geometry_msgs::Point>& markerTemplate, geometry_msgs::Pose initialEstimate, const kd_tree_3d& pointCloudTree);
};


#endif //SRC_ICP_IMPL_H
