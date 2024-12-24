;; Auto-generated. Do not edit!


(when (boundp 'car_monitor::Goal)
  (if (not (find-package "CAR_MONITOR"))
    (make-package "CAR_MONITOR"))
  (shadow 'Goal (find-package "CAR_MONITOR")))
(unless (find-package "CAR_MONITOR::GOAL")
  (make-package "CAR_MONITOR::GOAL"))

(in-package "ROS")
;;//! \htmlinclude Goal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass car_monitor::Goal
  :super ros::object
  :slots (_header _receiver_name _x _y _yaw _if_straight ))

(defmethod car_monitor::Goal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:receiver_name __receiver_name) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:if_straight __if_straight) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _receiver_name (string __receiver_name))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _if_straight __if_straight)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:receiver_name
   (&optional __receiver_name)
   (if __receiver_name (setq _receiver_name __receiver_name)) _receiver_name)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:if_straight
   (&optional (__if_straight :null))
   (if (not (eq __if_straight :null)) (setq _if_straight __if_straight)) _if_straight)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _receiver_name
    4 (length _receiver_name)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _yaw
    8
    ;; bool _if_straight
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _receiver_name
       (write-long (length _receiver_name) s) (princ _receiver_name s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _if_straight
       (if _if_straight (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _receiver_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _receiver_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _if_straight
     (setq _if_straight (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get car_monitor::Goal :md5sum-) "59f1461cb1d0760166025afddcc1007b")
(setf (get car_monitor::Goal :datatype-) "car_monitor/Goal")
(setf (get car_monitor::Goal :definition-)
      "Header header

string receiver_name  # 接收车辆名称
float64 x  # 目标点X坐标
float64 y  # 目标点Y坐标
float64 yaw # heading
bool if_straight #判断接下来是否走直线

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

")



(provide :car_monitor/Goal "59f1461cb1d0760166025afddcc1007b")


