; Auto-generated. Do not edit!


(cl:in-package blink_led-srv)


;//! \htmlinclude Not-request.msg.html

(cl:defclass <Not-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0))
)

(cl:defclass Not-request (<Not-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Not-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Not-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blink_led-srv:<Not-request> is deprecated: use blink_led-srv:Not-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <Not-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blink_led-srv:a-val is deprecated.  Use blink_led-srv:a instead.")
  (a m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Not-request>) ostream)
  "Serializes a message object of type '<Not-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Not-request>) istream)
  "Deserializes a message object of type '<Not-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Not-request>)))
  "Returns string type for a service object of type '<Not-request>"
  "blink_led/NotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Not-request)))
  "Returns string type for a service object of type 'Not-request"
  "blink_led/NotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Not-request>)))
  "Returns md5sum for a message object of type '<Not-request>"
  "7f50a0320e6f52448307d13d74286d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Not-request)))
  "Returns md5sum for a message object of type 'Not-request"
  "7f50a0320e6f52448307d13d74286d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Not-request>)))
  "Returns full string definition for message of type '<Not-request>"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Not-request)))
  "Returns full string definition for message of type 'Not-request"
  (cl:format cl:nil "int64 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Not-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Not-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Not-request
    (cl:cons ':a (a msg))
))
;//! \htmlinclude Not-response.msg.html

(cl:defclass <Not-response> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:string
    :initform ""))
)

(cl:defclass Not-response (<Not-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Not-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Not-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blink_led-srv:<Not-response> is deprecated: use blink_led-srv:Not-response instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <Not-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blink_led-srv:task-val is deprecated.  Use blink_led-srv:task instead.")
  (task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Not-response>) ostream)
  "Serializes a message object of type '<Not-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'task))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'task))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Not-response>) istream)
  "Deserializes a message object of type '<Not-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'task) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Not-response>)))
  "Returns string type for a service object of type '<Not-response>"
  "blink_led/NotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Not-response)))
  "Returns string type for a service object of type 'Not-response"
  "blink_led/NotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Not-response>)))
  "Returns md5sum for a message object of type '<Not-response>"
  "7f50a0320e6f52448307d13d74286d59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Not-response)))
  "Returns md5sum for a message object of type 'Not-response"
  "7f50a0320e6f52448307d13d74286d59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Not-response>)))
  "Returns full string definition for message of type '<Not-response>"
  (cl:format cl:nil "string task~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Not-response)))
  "Returns full string definition for message of type 'Not-response"
  (cl:format cl:nil "string task~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Not-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Not-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Not-response
    (cl:cons ':task (task msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Not)))
  'Not-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Not)))
  'Not-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Not)))
  "Returns string type for a service object of type '<Not>"
  "blink_led/Not")