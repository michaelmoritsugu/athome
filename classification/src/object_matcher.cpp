#include <ros/ros.h>

int main(int argc, char** argv)
{

ros::init(argc, argv, "object_matcher");
ros::NodeHandle n;

while (n.ok())
{


ROS_INFO("Object matcher running.");
}

return 0;
}
