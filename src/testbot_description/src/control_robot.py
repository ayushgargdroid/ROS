#!/usr/bin/env python
import rospy
#from testbot_description.msg import Data
from sensor_msgs.msg import JointState
import numpy as np
import time
from math import pi

pub = rospy.Publisher('joint_states',JointState,queue_size=10)
temp = ['base_to_wheel1', 'base_to_wheel2', 'base_to_wheel3', 'base_to_wheel4', 'base_to_wheel5', 'base_to_wheel6']

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
	msg.position = 6 *[0.0]
	if data > 3.14:
		data = -(3.14-(data%3.14))
	for i in temp:
		msg.name.append(i)
	for i in range(0,6):
		msg.position[i] = data
	msg.velocity = [0] * 6
	msg.effort = [0] * 6
	pub.publish(msg)

if __name__ == '__main__':
		try:
			startup()
		except rospy.ServiceException, e:
			print "Service call failed: %s"%e
		rospy.spin()
		


