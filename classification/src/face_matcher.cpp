#include <ros/ros.h>

int main(int argc, char** argv)
{

ros::init(argc, argv, "face_matcher");
ros::NodeHandle n;

while (n.ok())
{

ROS_INFO("Face_matcher running.");
}

return 0;
}
