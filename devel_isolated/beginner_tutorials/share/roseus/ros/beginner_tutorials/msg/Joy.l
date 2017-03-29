;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Joy)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Joy (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::JOY")
  (make-package "BEGINNER_TUTORIALS::JOY"))

(in-package "ROS")
;;//! \htmlinclude Joy.msg.html


(defclass beginner_tutorials::Joy
  :super ros::object
  :slots (_x _y _rot _throttle ))

(defmethod beginner_tutorials::Joy
  (:init
   (&key
    ((:x __x) "")
    ((:y __y) "")
    ((:rot __rot) "")
    ((:throttle __throttle) "")
    )
   (send-super :init)
   (setq _x (string __x))
   (setq _y (string __y))
   (setq _rot (string __rot))
   (setq _throttle (string __throttle))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:rot
   (&optional __rot)
   (if __rot (setq _rot __rot)) _rot)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:serialization-length
   ()
   (+
    ;; string _x
    4 (length _x)
    ;; string _y
    4 (length _y)
    ;; string _rot
    4 (length _rot)
    ;; string _throttle
    4 (length _throttle)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _x
       (write-long (length _x) s) (princ _x s)
     ;; string _y
       (write-long (length _y) s) (princ _y s)
     ;; string _rot
       (write-long (length _rot) s) (princ _rot s)
     ;; string _throttle
       (write-long (length _throttle) s) (princ _throttle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _x
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _x (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _y
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _y (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _rot
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rot (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _throttle
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _throttle (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::Joy :md5sum-) "ed918a0c2fe838fed35fc22e2bcab1be")
(setf (get beginner_tutorials::Joy :datatype-) "beginner_tutorials/Joy")
(setf (get beginner_tutorials::Joy :definition-)
      "string x
string y
string rot
string throttle

")



(provide :beginner_tutorials/Joy "ed918a0c2fe838fed35fc22e2bcab1be")


