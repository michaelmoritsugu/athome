#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <feature_extraction/ObjectFeatureMsg.h>
#include <feature_extraction/CvSURFPoint.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <vector>
#include "opencv2/objdetect/objdetect.hpp"
#include "opencv2/features2d/features2d.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/nonfree/nonfree.hpp"
#include "opencv2/imgproc/imgproc_c.h"
#include "opencv2/legacy/legacy.hpp"
#include "opencv2/legacy/compat.hpp"
#include <opencv2/nonfree/nonfree.hpp>

namespace enc = sensor_msgs::image_encodings;

class ImageProcessor
{

private:
	
	ros::Subscriber sub;
	ros::Publisher pub;
	ros::NodeHandle nh;

	image_transport::ImageTransport transport;
	image_transport::Subscriber image_subscriber;

public: 

	ImageProcessor(ros::NodeHandle n) : transport(n)
	{

		nh = n;
	  	pub = n.advertise<sensor_msgs::Image>("processed_image", 1);
		image_subscriber = transport.subscribe("gscam/image_raw", 1, &ImageProcessor::raw_image_callback, this);

	}


	// For now we just normalize the image to grayscale. 
	 void raw_image_callback(const sensor_msgs::ImageConstPtr& msg)
	{

		cv_bridge::CvImagePtr cv_ptr;
		cv_ptr = cv_bridge::toCvCopy(msg, enc::BGR8);

		if (!cv_ptr) 
		{
			ROS_ERROR("ImageProcessing: cv_bridge exception");
			return;
		}

		IplImage ipl(cv_ptr->image);
		IplImage* ipl_obj = cvCreateImage(cvGetSize(&ipl), 8, 1);

		// Grey conversion
		cvCvtColor(&ipl, ipl_obj, CV_BGR2GRAY);
		
		// Cannot directly convert IplImage to sensor_msgs/Image, so we do this.
		cv_bridge::CvImage pubbed_img;
		pubbed_img.header   = msg->header;
		pubbed_img.encoding = sensor_msgs::image_encodings::TYPE_8UC1;
		pubbed_img.image    = ipl_obj;
		
		// Send our image
		pub.publish(pubbed_img.toImageMsg());
	}

};


int main(int argc, char** argv)
{

	ros::init(argc, argv, "image_preprocessing");
	ros::NodeHandle n;

	ImageProcessor imageProc(n);

	while (n.ok())
	{

		ros::spin();

	}
	
	return 0;
}

