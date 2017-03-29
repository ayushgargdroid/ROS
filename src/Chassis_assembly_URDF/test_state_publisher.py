#!/usr/bin/env python
import rospy
#from testbot_description.msg import Data
from sensor_msgs.msg import JointState
import numpy as np
import time
from math import pi

pub = rospy.Publisher('joint_states',JointState,queue_size=10)
temp = ['base_to_child']

def startup():
	rospy.init_node('control_robot',anonymous=True)
	#rospy.Subscriber('motor_code',Data,talker)
	for i in np.linspace(0,3.14*10,100):
		talker(i)
		time.sleep(0.1)

def talker(data):
	global pub,temp
	msg = JointState()
	msg.header.stamp = rospy.Time.now()
	msg.position = 1 *[0.0]
	if data > 3.14:
		data = -(3.14-(data%3.14))
	for i in temp:
		msg.name.append(i)
	for i in range(0,1):
		msg.position[i] = 0.0
	msg.velocity = [0] * 1
	msg.effort = [0] * 1
	pub.publish(msg)

if __name__ == '__main__':
		try:
			startup()
		except rospy.ServiceException, e:
			print "Service call failed: %s"%e
		rospy.spin()
		


