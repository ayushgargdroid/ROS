#!/usr/bin/env python
import rospy
#from testbot_description.msg import Data
from sensor_msgs.msg import JointState
import numpy as np
import time
import math
import tf
import tf2_ros
import geometry_msgs.msg

pub = rospy.Publisher('joint_states',JointState,queue_size=10)
temp = ['base_to_wheel1', 'base_to_wheel2', 'base_to_wheel3', 'base_to_wheel4', 'base_to_wheel5', 'base_to_wheel6']
br = tf2_ros.TransformBroadcaster()
leftf = rightf = leftr = rightr = angle = 0

def mapVal(a,b,c,d,e):
		return (a-b)*(e-d)/(c-b) + d

'''def callback(data):
	global leftr,leftf,rightf,rightr,angle
	leftr = mapVal(data.leftr,0,255,1,100)
	leftf = mapVal(data.leftf,0,255,1,100)
	rightr = mapVal(data.rightr,0,255,1,100)
	rightf = mapVal(data.rightf,0,255,1,100)
	angle = mapVal(data.angle,0,90,45,90)'''

def talker(data,data2,data3):
	global pub,temp,br,angle
	t = geometry_msgs.msg.TransformStamped()
	msg = JointState()

	t.header.stamp = rospy.Time.now()
	t.header.frame_id = 'world'
	t.child_frame_id = 'base_link'
	msg.header.stamp = rospy.Time.now()
	msg.position = 6 *[0.0]
	'''if data > 3.14:
		data = -(3.14-(data%3.14))'''
	for i in temp:
		msg.name.append(i)
	for i in range(0,6):
		msg.position[i] = data
	msg.velocity = [0] * 6
	msg.effort = [0] * 6
	t.transform.translation.x = data2
	t.transform.translation.y = 0
	t.transform.translation.z = 0
	q = tf.transformations.quaternion_from_euler(0,0,0)
	t.transform.rotation.x = q[0]
	t.transform.rotation.y = q[1]
	t.transform.rotation.z = q[2]
	t.transform.rotation.w = q[3] 	

	pub.publish(msg)
	br.sendTransform(t)

def giveCo(x,angle):
	rad = math.radians(angle)
	base = x/math.tan(rad)
	return base

if __name__ == '__main__':
	rospy.init_node('control_robot',anonymous=True)
	#rospy.Subscriber('joystick_stream',Data,callback)
	rate = rospy.Rate(20)
	i = 0
	j = 0
	k = 0
	z = 1
	t = 0
	m = 0
	while not rospy.is_shutdown():
		talker(i,j,k)
		if(m!=0):
			i = m
			print('yo')
		else:
			i = i + 3.14/100
			print i
			if(i>=3.14):
				m = i
		if(t != 0):
			j = t
		else:
			j = j - (2 * math.pi * 0.25 / 100)
			if(j<=-2*math.pi*0.25):
				t = j
		k = k - (2 * math.pi * 0.25 / giveCo(100,89))
		#print giveCo(100,89)
		z = z + 1
		rate.sleep()



		


