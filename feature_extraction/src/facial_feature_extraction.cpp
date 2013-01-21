#include "ros/ros.h"

int main(int argc, char** argv)
{

ros::init(argc, argv, "facial_feature_detection");
ros::NodeHandle n;

while (n.ok())
{

ROS_INFO("Facial feature extraction running.");

}

return 0;
}

