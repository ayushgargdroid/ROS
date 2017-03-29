;; Auto-generated. Do not edit!


(when (boundp 'blink_led::Not)
  (if (not (find-package "BLINK_LED"))
    (make-package "BLINK_LED"))
  (shadow 'Not (find-package "BLINK_LED")))
(unless (find-package "BLINK_LED::NOT")
  (make-package "BLINK_LED::NOT"))
(unless (find-package "BLINK_LED::NOTREQUEST")
  (make-package "BLINK_LED::NOTREQUEST"))
(unless (find-package "BLINK_LED::NOTRESPONSE")
  (make-package "BLINK_LED::NOTRESPONSE"))

(in-package "ROS")





(defclass blink_led::NotRequest
  :super ros::object
  :slots (_a ))

(defmethod blink_led::NotRequest
  (:init
   (&key
    ((:a __a) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass blink_led::NotResponse
  :super ros::object
  :slots (_task ))

(defmethod blink_led::NotResponse
  (:init
   (&key
    ((:task __task) "")
    )
   (send-super :init)
   (setq _task (string __task))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:serialization-length
   ()
   (+
    ;; string _task
    4 (length _task)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task
       (write-long (length _task) s) (princ _task s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass blink_led::Not
  :super ros::object
  :slots ())

(setf (get blink_led::Not :md5sum-) "7f50a0320e6f52448307d13d74286d59")
(setf (get blink_led::Not :datatype-) "blink_led/Not")
(setf (get blink_led::Not :request) blink_led::NotRequest)
(setf (get blink_led::Not :response) blink_led::NotResponse)

(defmethod blink_led::NotRequest
  (:response () (instance blink_led::NotResponse :init)))

(setf (get blink_led::NotRequest :md5sum-) "7f50a0320e6f52448307d13d74286d59")
(setf (get blink_led::NotRequest :datatype-) "blink_led/NotRequest")
(setf (get blink_led::NotRequest :definition-)
      "int64 a
---
string task

")

(setf (get blink_led::NotResponse :md5sum-) "7f50a0320e6f52448307d13d74286d59")
(setf (get blink_led::NotResponse :datatype-) "blink_led/NotResponse")
(setf (get blink_led::NotResponse :definition-)
      "int64 a
---
string task

")



(provide :blink_led/Not "7f50a0320e6f52448307d13d74286d59")


