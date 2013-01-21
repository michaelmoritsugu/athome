#include <ros/ros.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <feature_extraction/CvPoint2D32f.h>
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

class ObjectFeatures
{

		//image_transport::ImageTransport transport;
		ros::Subscriber image_subscriber;

		ros::Publisher object_feature_publisher;
		ros::NodeHandle nh;
		int seq;
		std::string frame_id;
		
		CvMemStorage * storage;

	public:

		ObjectFeatures(ros::NodeHandle n, std::string frame) //: transport(n)
		{
			// Required to extract SURF points in OpenCV
			cv::initModule_nonfree();

			frame_id = frame;
			nh = n;

			object_feature_publisher = 
			n.advertise<feature_extraction::ObjectFeatureMsg>("object_features", 100);			

			image_subscriber = 
			nh.subscribe("processed_image", 1,&ObjectFeatures::processed_image_callback, this);
			
			// allocate storage.
			storage = cvCreateMemStorage(0);
			//cv::namedWindow(WINDOW);
		}

		// SURF extraction.
		void processed_image_callback(const sensor_msgs::Image& msg)
		{

			cv_bridge::CvImagePtr cv_ptr;
			cv_ptr = cv_bridge::toCvCopy(msg, enc::BGR8);

			if (!cv_ptr) 
			{
				ROS_ERROR("ObjectFeatureExtraction: cv_bridge exception");
				return;
			}

			// Define sequence for storing surf keypoints and descriptors
			CvSeq * imageKeyPoints = 0, *imageDescriptors = 0;

			IplImage ipl = cv_ptr->image;

			// Where the SURF magic occurs
			CvSURFParams params = cvSURFParams(500, 1);
			cvExtractSURF(&ipl, 0, &imageKeyPoints, &imageDescriptors, storage, params);

			// Fill in the message fields.
			feature_extraction::ObjectFeatureMsg object_feats;

			std::vector<feature_extraction::CvSURFPoint> surf_points(imageDescriptors->total);
			
			// Add all surf points to vector
			for (int i = 0; i < imageDescriptors->total; i++)
			{
				// Our point data message for ROS
				feature_extraction::CvSURFPoint surf_point;
		
				// Our point message in OpenCV
				CvSURFPoint * p = (CvSURFPoint *) cvGetSeqElem(imageKeyPoints, i);
				
				// Point message for ROS				
				feature_extraction::CvPoint2D32f pt;
				surf_point.pt.x = p->pt.x;
				surf_point.pt.y = p->pt.y;
				
				// Feature info for ROS
				surf_point.laplacian = p->laplacian;
				surf_point.hessian   = p->hessian;
				surf_point.dir       = p->dir;

				surf_points[i] = surf_point;				
			}

			object_feats.features = surf_points;
			object_feats.image    = msg;

			object_feature_publisher.publish(object_feats);
		}


};

int main(int argc, char** argv)
{

	ros::init(argc, argv, "object_feature_extraction");
	ros::NodeHandle n;

	ObjectFeatures feats(n, "/object_features");

	while (n.ok())
	{

		ros::spinOnce();

	}

	return 0;
}

