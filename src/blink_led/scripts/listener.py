#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial

global ser
ser = serial.Serial('/dev/ttyUSB0',9600)

def getData(data):
	global a
	rospy.loginfo(rospy.get_caller_id() + " | I heard %s",data.data)
	ser.write(data.data)

def listener():

	rospy.init_node('listener',anonymous=True)

	rospy.Subscriber('Stream1',String,getData)

	rospy.spin()

if __name__ == '__main__':
	listener()