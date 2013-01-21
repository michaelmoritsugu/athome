#include <ros/ros.h>

int main(int argc, char** argv)
{

ros::init(argc, argv, "object_trainer");
ros::NodeHandle n;

while (n.ok())
{


ROS_INFO("Object trainer running.");
}

return 0;
}
