; Auto-generated. Do not edit!


(cl:in-package car_monitor-msg)


;//! \htmlinclude CarRank.msg.html

(cl:defclass <CarRank> (roslisp-msg-protocol:ros-message)
  ((car_rank
    :reader car_rank
    :initarg :car_rank
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CarRank (<CarRank>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarRank>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarRank)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name car_monitor-msg:<CarRank> is deprecated: use car_monitor-msg:CarRank instead.")))

(cl:ensure-generic-function 'car_rank-val :lambda-list '(m))
(cl:defmethod car_rank-val ((m <CarRank>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader car_monitor-msg:car_rank-val is deprecated.  Use car_monitor-msg:car_rank instead.")
  (car_rank m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarRank>) ostream)
  "Serializes a message object of type '<CarRank>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'car_rank))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'car_rank))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarRank>) istream)
  "Deserializes a message object of type '<CarRank>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'car_rank) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'car_rank)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarRank>)))
  "Returns string type for a message object of type '<CarRank>"
  "car_monitor/CarRank")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarRank)))
  "Returns string type for a message object of type 'CarRank"
  "car_monitor/CarRank")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarRank>)))
  "Returns md5sum for a message object of type '<CarRank>"
  "c93f5f28361737bd4f54c4b01de9c55c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarRank)))
  "Returns md5sum for a message object of type 'CarRank"
  "c93f5f28361737bd4f54c4b01de9c55c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarRank>)))
  "Returns full string definition for message of type '<CarRank>"
  (cl:format cl:nil "string[] car_rank  # 车辆顺序~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarRank)))
  "Returns full string definition for message of type 'CarRank"
  (cl:format cl:nil "string[] car_rank  # 车辆顺序~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarRank>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'car_rank) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarRank>))
  "Converts a ROS message object to a list"
  (cl:list 'CarRank
    (cl:cons ':car_rank (car_rank msg))
))
