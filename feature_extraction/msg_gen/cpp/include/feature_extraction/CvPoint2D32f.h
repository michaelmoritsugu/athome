/* Auto-generated by genmsg_cpp for file /home/marco/fuerte_workspace/tbots_vision_pkg/feature_extraction/msg/CvPoint2D32f.msg */
#ifndef FEATURE_EXTRACTION_MESSAGE_CVPOINT2D32F_H
#define FEATURE_EXTRACTION_MESSAGE_CVPOINT2D32F_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace feature_extraction
{
template <class ContainerAllocator>
struct CvPoint2D32f_ {
  typedef CvPoint2D32f_<ContainerAllocator> Type;

  CvPoint2D32f_()
  : x(0.0)
  , y(0.0)
  {
  }

  CvPoint2D32f_(const ContainerAllocator& _alloc)
  : x(0.0)
  , y(0.0)
  {
  }

  typedef float _x_type;
  float x;

  typedef float _y_type;
  float y;


  typedef boost::shared_ptr< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::feature_extraction::CvPoint2D32f_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct CvPoint2D32f
typedef  ::feature_extraction::CvPoint2D32f_<std::allocator<void> > CvPoint2D32f;

typedef boost::shared_ptr< ::feature_extraction::CvPoint2D32f> CvPoint2D32fPtr;
typedef boost::shared_ptr< ::feature_extraction::CvPoint2D32f const> CvPoint2D32fConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::feature_extraction::CvPoint2D32f_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace feature_extraction

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::feature_extraction::CvPoint2D32f_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > {
  static const char* value() 
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const  ::feature_extraction::CvPoint2D32f_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > {
  static const char* value() 
  {
    return "feature_extraction/CvPoint2D32f";
  }

  static const char* value(const  ::feature_extraction::CvPoint2D32f_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > {
  static const char* value() 
  {
    return "float32 x\n\
float32 y\n\
\n\
";
  }

  static const char* value(const  ::feature_extraction::CvPoint2D32f_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct CvPoint2D32f_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::feature_extraction::CvPoint2D32f_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::feature_extraction::CvPoint2D32f_<ContainerAllocator> & v) 
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};


} // namespace message_operations
} // namespace ros

#endif // FEATURE_EXTRACTION_MESSAGE_CVPOINT2D32F_H
