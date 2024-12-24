;; Auto-generated. Do not edit!


(when (boundp 'car_monitor::Gps)
  (if (not (find-package "CAR_MONITOR"))
    (make-package "CAR_MONITOR"))
  (shadow 'Gps (find-package "CAR_MONITOR")))
(unless (find-package "CAR_MONITOR::GPS")
  (make-package "CAR_MONITOR::GPS"))

(in-package "ROS")
;;//! \htmlinclude Gps.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass car_monitor::Gps
  :super ros::object
  :slots (_header _latitude _longitude _altitude _latitude_variance _longitude_variance _altitude_variance _vel _accel _posture ))

(defmethod car_monitor::Gps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:latitude_variance __latitude_variance) 0.0)
    ((:longitude_variance __longitude_variance) 0.0)
    ((:altitude_variance __altitude_variance) 0.0)
    ((:vel __vel) (instance geometry_msgs::Twist :init))
    ((:accel __accel) (instance geometry_msgs::Vector3 :init))
    ((:posture __posture) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _latitude_variance (float __latitude_variance))
   (setq _longitude_variance (float __longitude_variance))
   (setq _altitude_variance (float __altitude_variance))
   (setq _vel __vel)
   (setq _accel __accel)
   (setq _posture __posture)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:latitude_variance
   (&optional __latitude_variance)
   (if __latitude_variance (setq _latitude_variance __latitude_variance)) _latitude_variance)
  (:longitude_variance
   (&optional __longitude_variance)
   (if __longitude_variance (setq _longitude_variance __longitude_variance)) _longitude_variance)
  (:altitude_variance
   (&optional __altitude_variance)
   (if __altitude_variance (setq _altitude_variance __altitude_variance)) _altitude_variance)
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:posture
   (&rest __posture)
   (if (keywordp (car __posture))
       (send* _posture __posture)
     (progn
       (if __posture (setq _posture (car __posture)))
       _posture)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _latitude_variance
    8
    ;; float64 _longitude_variance
    8
    ;; float64 _altitude_variance
    8
    ;; geometry_msgs/Twist _vel
    (send _vel :serialization-length)
    ;; geometry_msgs/Vector3 _accel
    (send _accel :serialization-length)
    ;; geometry_msgs/Vector3 _posture
    (send _posture :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude_variance
       (sys::poke _latitude_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude_variance
       (sys::poke _longitude_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_variance
       (sys::poke _altitude_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Twist _vel
       (send _vel :serialize s)
     ;; geometry_msgs/Vector3 _accel
       (send _accel :serialize s)
     ;; geometry_msgs/Vector3 _posture
       (send _posture :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude_variance
     (setq _latitude_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude_variance
     (setq _longitude_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_variance
     (setq _altitude_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Twist _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; geometry_msgs/Vector3 _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; geometry_msgs/Vector3 _posture
     (send _posture :deserialize buf ptr-) (incf ptr- (send _posture :serialization-length))
   ;;
   self)
  )

(setf (get car_monitor::Gps :md5sum-) "295397941bdaaa9898baf0c7b0105885")
(setf (get car_monitor::Gps :datatype-) "car_monitor/Gps")
(setf (get car_monitor::Gps :definition-)
      "Header header

float64 latitude  # 纬度
float64 longitude  # 经度
float64 altitude  # 高度

float64 latitude_variance  # 纬度的方差
float64 longitude_variance  # 经度的方差
float64 altitude_variance # 高度的方差

# 速度
geometry_msgs/Twist vel

# 加速度
geometry_msgs/Vector3 accel

# 姿态 (x, y, z)分别对应(roll, pitch, yall)
# 说明：yall - 蘑菇天线左右安装时，朝北为0，顺时针数值增大
geometry_msgs/Vector3 posture

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :car_monitor/Gps "295397941bdaaa9898baf0c7b0105885")


