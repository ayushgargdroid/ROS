#!/usr/bin/env python
import rospy
import tf
import tf2_ros
import geometry_msgs.msg

if __name__ == '__main__':
	rospy.init_node('tf_world')
	rate = rospy.Rate(10)
	while not rospy.is_shutdown():
		br = tf2_ros.TransformBroadcaster()
		t = geometry_msgs.msg.TransformStamped()

		t.header.stamp = rospy.Time.now()
		t.header.frame_id = 'world'
		t.child_frame_id = 'base_link'
		t.transform.translation.x = 1
		t.transform.translation.y = 0.0
		t.transform.translation.z = 0.0
		t.transform.rotation.x = 0.0
		t.transform.rotation.y = 0.0
		t.transform.rotation.z = 0.0
		t.transform.rotation.w = 0.0
		br.sendTransform(t)
		print '1'

		rate.sleep()
		rospy.spin()