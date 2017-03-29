#!/usr/bin/env python

import rospy
from blink_led.msg import Joy
import serial

global ser
ser = serial.Serial('/dev/ttyUSB0',19200)

def callback(data):
	print data
	ser.write(data.x+'\n')
	ser.write(data.y+'\n')
	ser.write(data.rot+'\n')
	ser.write(data.throttle+'\n')

def listener():
	rospy.init_node('send_joy',anonymous=True)
	rospy.Subscriber('joystick',Joy,callback)
	rospy.spin()

if __name__ == '__main__':
	listener()
