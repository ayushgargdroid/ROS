;; Auto-generated. Do not edit!


(when (boundp 'testbot_description::Data)
  (if (not (find-package "TESTBOT_DESCRIPTION"))
    (make-package "TESTBOT_DESCRIPTION"))
  (shadow 'Data (find-package "TESTBOT_DESCRIPTION")))
(unless (find-package "TESTBOT_DESCRIPTION::DATA")
  (make-package "TESTBOT_DESCRIPTION::DATA"))

(in-package "ROS")
;;//! \htmlinclude Data.msg.html


(defclass testbot_description::Data
  :super ros::object
  :slots (_leftf _leftr _rightf _rightr _angle ))

(defmethod testbot_description::Data
  (:init
   (&key
    ((:leftf __leftf) 0)
    ((:leftr __leftr) 0)
    ((:rightf __rightf) 0)
    ((:rightr __rightr) 0)
    ((:angle __angle) 0)
    )
   (send-super :init)
   (setq _leftf (round __leftf))
   (setq _leftr (round __leftr))
   (setq _rightf (round __rightf))
   (setq _rightr (round __rightr))
   (setq _angle (round __angle))
   self)
  (:leftf
   (&optional __leftf)
   (if __leftf (setq _leftf __leftf)) _leftf)
  (:leftr
   (&optional __leftr)
   (if __leftr (setq _leftr __leftr)) _leftr)
  (:rightf
   (&optional __rightf)
   (if __rightf (setq _rightf __rightf)) _rightf)
  (:rightr
   (&optional __rightr)
   (if __rightr (setq _rightr __rightr)) _rightr)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int64 _leftf
    8
    ;; int64 _leftr
    8
    ;; int64 _rightf
    8
    ;; int64 _rightr
    8
    ;; int64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _leftf
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leftf (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leftf) (= (length (_leftf . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leftf . bv) 0) 0) s)
              (write-long (ash (elt (_leftf . bv) 1) -1) s))
             ((and (class _leftf) (= (length (_leftf . bv)) 1)) ;; big1
              (write-long (elt (_leftf . bv) 0) s)
              (write-long (if (>= _leftf 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leftf s)(write-long (if (>= _leftf 0) 0 #xffffffff) s)))
     ;; int64 _leftr
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leftr (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leftr) (= (length (_leftr . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leftr . bv) 0) 0) s)
              (write-long (ash (elt (_leftr . bv) 1) -1) s))
             ((and (class _leftr) (= (length (_leftr . bv)) 1)) ;; big1
              (write-long (elt (_leftr . bv) 0) s)
              (write-long (if (>= _leftr 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leftr s)(write-long (if (>= _leftr 0) 0 #xffffffff) s)))
     ;; int64 _rightf
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rightf (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rightf) (= (length (_rightf . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rightf . bv) 0) 0) s)
              (write-long (ash (elt (_rightf . bv) 1) -1) s))
             ((and (class _rightf) (= (length (_rightf . bv)) 1)) ;; big1
              (write-long (elt (_rightf . bv) 0) s)
              (write-long (if (>= _rightf 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rightf s)(write-long (if (>= _rightf 0) 0 #xffffffff) s)))
     ;; int64 _rightr
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rightr (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rightr) (= (length (_rightr . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rightr . bv) 0) 0) s)
              (write-long (ash (elt (_rightr . bv) 1) -1) s))
             ((and (class _rightr) (= (length (_rightr . bv)) 1)) ;; big1
              (write-long (elt (_rightr . bv) 0) s)
              (write-long (if (>= _rightr 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rightr s)(write-long (if (>= _rightr 0) 0 #xffffffff) s)))
     ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _angle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _angle) (= (length (_angle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_angle . bv) 0) 0) s)
              (write-long (ash (elt (_angle . bv) 1) -1) s))
             ((and (class _angle) (= (length (_angle . bv)) 1)) ;; big1
              (write-long (elt (_angle . bv) 0) s)
              (write-long (if (>= _angle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _angle s)(write-long (if (>= _angle 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _leftf
#+(or :alpha :irix6 :x86_64)
      (setf _leftf (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leftf (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _leftr
#+(or :alpha :irix6 :x86_64)
      (setf _leftr (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leftr (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rightf
#+(or :alpha :irix6 :x86_64)
      (setf _rightf (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rightf (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rightr
#+(or :alpha :irix6 :x86_64)
      (setf _rightr (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rightr (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
      (setf _angle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _angle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get testbot_description::Data :md5sum-) "795a1a99ef68b6e918deb625bb3942b3")
(setf (get testbot_description::Data :datatype-) "testbot_description/Data")
(setf (get testbot_description::Data :definition-)
      "int64 leftf
int64 leftr
int64 rightf
int64 rightr
int64 angle

")



(provide :testbot_description/Data "795a1a99ef68b6e918deb625bb3942b3")


