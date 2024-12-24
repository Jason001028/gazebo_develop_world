;; Auto-generated. Do not edit!


(when (boundp 'car_monitor::CarRank)
  (if (not (find-package "CAR_MONITOR"))
    (make-package "CAR_MONITOR"))
  (shadow 'CarRank (find-package "CAR_MONITOR")))
(unless (find-package "CAR_MONITOR::CARRANK")
  (make-package "CAR_MONITOR::CARRANK"))

(in-package "ROS")
;;//! \htmlinclude CarRank.msg.html


(defclass car_monitor::CarRank
  :super ros::object
  :slots (_car_rank ))

(defmethod car_monitor::CarRank
  (:init
   (&key
    ((:car_rank __car_rank) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _car_rank __car_rank)
   self)
  (:car_rank
   (&optional __car_rank)
   (if __car_rank (setq _car_rank __car_rank)) _car_rank)
  (:serialization-length
   ()
   (+
    ;; string[] _car_rank
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _car_rank)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _car_rank
     (write-long (length _car_rank) s)
     (dolist (elem _car_rank)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _car_rank
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _car_rank (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _car_rank i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get car_monitor::CarRank :md5sum-) "c93f5f28361737bd4f54c4b01de9c55c")
(setf (get car_monitor::CarRank :datatype-) "car_monitor/CarRank")
(setf (get car_monitor::CarRank :definition-)
      "string[] car_rank  # 车辆顺序

")



(provide :car_monitor/CarRank "c93f5f28361737bd4f54c4b01de9c55c")


