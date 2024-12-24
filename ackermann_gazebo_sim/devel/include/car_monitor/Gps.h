// Generated by gencpp from file car_monitor/Gps.msg
// DO NOT EDIT!


#ifndef CAR_MONITOR_MESSAGE_GPS_H
#define CAR_MONITOR_MESSAGE_GPS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace car_monitor
{
template <class ContainerAllocator>
struct Gps_
{
  typedef Gps_<ContainerAllocator> Type;

  Gps_()
    : header()
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , latitude_variance(0.0)
    , longitude_variance(0.0)
    , altitude_variance(0.0)
    , vel()
    , accel()
    , posture()  {
    }
  Gps_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , latitude(0.0)
    , longitude(0.0)
    , altitude(0.0)
    , latitude_variance(0.0)
    , longitude_variance(0.0)
    , altitude_variance(0.0)
    , vel(_alloc)
    , accel(_alloc)
    , posture(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _latitude_type;
  _latitude_type latitude;

   typedef double _longitude_type;
  _longitude_type longitude;

   typedef double _altitude_type;
  _altitude_type altitude;

   typedef double _latitude_variance_type;
  _latitude_variance_type latitude_variance;

   typedef double _longitude_variance_type;
  _longitude_variance_type longitude_variance;

   typedef double _altitude_variance_type;
  _altitude_variance_type altitude_variance;

   typedef  ::geometry_msgs::Twist_<ContainerAllocator>  _vel_type;
  _vel_type vel;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _accel_type;
  _accel_type accel;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _posture_type;
  _posture_type posture;





  typedef boost::shared_ptr< ::car_monitor::Gps_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::car_monitor::Gps_<ContainerAllocator> const> ConstPtr;

}; // struct Gps_

typedef ::car_monitor::Gps_<std::allocator<void> > Gps;

typedef boost::shared_ptr< ::car_monitor::Gps > GpsPtr;
typedef boost::shared_ptr< ::car_monitor::Gps const> GpsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::car_monitor::Gps_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::car_monitor::Gps_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::car_monitor::Gps_<ContainerAllocator1> & lhs, const ::car_monitor::Gps_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.latitude == rhs.latitude &&
    lhs.longitude == rhs.longitude &&
    lhs.altitude == rhs.altitude &&
    lhs.latitude_variance == rhs.latitude_variance &&
    lhs.longitude_variance == rhs.longitude_variance &&
    lhs.altitude_variance == rhs.altitude_variance &&
    lhs.vel == rhs.vel &&
    lhs.accel == rhs.accel &&
    lhs.posture == rhs.posture;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::car_monitor::Gps_<ContainerAllocator1> & lhs, const ::car_monitor::Gps_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace car_monitor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::car_monitor::Gps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::car_monitor::Gps_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_monitor::Gps_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::car_monitor::Gps_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_monitor::Gps_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::car_monitor::Gps_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::car_monitor::Gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "295397941bdaaa9898baf0c7b0105885";
  }

  static const char* value(const ::car_monitor::Gps_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x295397941bdaaa98ULL;
  static const uint64_t static_value2 = 0x98baf0c7b0105885ULL;
};

template<class ContainerAllocator>
struct DataType< ::car_monitor::Gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "car_monitor/Gps";
  }

  static const char* value(const ::car_monitor::Gps_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::car_monitor::Gps_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"float64 latitude  # 纬度\n"
"float64 longitude  # 经度\n"
"float64 altitude  # 高度\n"
"\n"
"float64 latitude_variance  # 纬度的方差\n"
"float64 longitude_variance  # 经度的方差\n"
"float64 altitude_variance # 高度的方差\n"
"\n"
"# 速度\n"
"geometry_msgs/Twist vel\n"
"\n"
"# 加速度\n"
"geometry_msgs/Vector3 accel\n"
"\n"
"# 姿态 (x, y, z)分别对应(roll, pitch, yall)\n"
"# 说明：yall - 蘑菇天线左右安装时，朝北为0，顺时针数值增大\n"
"geometry_msgs/Vector3 posture\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::car_monitor::Gps_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::car_monitor::Gps_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.latitude);
      stream.next(m.longitude);
      stream.next(m.altitude);
      stream.next(m.latitude_variance);
      stream.next(m.longitude_variance);
      stream.next(m.altitude_variance);
      stream.next(m.vel);
      stream.next(m.accel);
      stream.next(m.posture);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gps_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::car_monitor::Gps_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::car_monitor::Gps_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "latitude: ";
    Printer<double>::stream(s, indent + "  ", v.latitude);
    s << indent << "longitude: ";
    Printer<double>::stream(s, indent + "  ", v.longitude);
    s << indent << "altitude: ";
    Printer<double>::stream(s, indent + "  ", v.altitude);
    s << indent << "latitude_variance: ";
    Printer<double>::stream(s, indent + "  ", v.latitude_variance);
    s << indent << "longitude_variance: ";
    Printer<double>::stream(s, indent + "  ", v.longitude_variance);
    s << indent << "altitude_variance: ";
    Printer<double>::stream(s, indent + "  ", v.altitude_variance);
    s << indent << "vel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Twist_<ContainerAllocator> >::stream(s, indent + "  ", v.vel);
    s << indent << "accel: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.accel);
    s << indent << "posture: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.posture);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAR_MONITOR_MESSAGE_GPS_H
