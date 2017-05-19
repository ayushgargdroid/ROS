#!/usr/bin/env python

import rospy
import math
import tf2_ros
import geometry_msgs.msg
import turtlesim.srv

if __name__ == '__main__':
	rospy.init_node('listen_robot')
	tfBuffer = tf2_ros.Buffer()
	listener = tf2_ros.TransformListener(tfBuffer)

	turtle_vel = rospy.Publisher('base_link/cmd_vel',geometry_msgs.msg.Twist,queue_size=1)

	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		print 'listener: base_link'
		try:
			trans = tfBuffer.lookup_transform('world','base_link', rospy.Time())
			
		except (tf2_ros.LookupException,tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
			rate.sleep()
			continue

		msg = geometry_msgs.msg.Twist()
		msg.angular.z = 0
		msg.linear.x = trans.transform.x

		turtle_vel.publish(msg)

		rate.sleep()

