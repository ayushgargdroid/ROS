#!/usr/bin/env python
import rospy
from turtlesim.srv import *
from std_msgs.msg import String
from geometry_msgs.msg import Twist

global pub
pub = rospy.Publisher('yo/cmd_vel',Twist,queue_size=10)

def callTwist(data):
	
	a = data.linear
	b = data.angular
	twist = Twist()
	twist.linear.x = data.linear.x 
	twist.linear.y = data.linear.y
	twist.linear.z = data.linear.z

	twist.angular.x = data.angular.x
	twist.angular.y = data.angular.y
	twist.angular.z = data.angular.z 

	rospy.loginfo("EteteI heard\n%s %s"%(data.linear,data.angular))
	pub.publish(twist)

def turtle_follower():
	rospy.wait_for_service('spawn')
	rospy.init_node('turtle_follower', anonymous=True)
	try:
		spawn = rospy.ServiceProxy('spawn',Spawn)
		create = spawn(5.544444561,5.544444561,0.0,'yo')
		print create.name

	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

	print "yolo"
	rospy.Subscriber('turtle1/cmd_vel',Twist,callTwist)
	rospy.spin()
		

		#print 'afsngklsbufukf\n\n'

		#rate.sleep()


if __name__ == '__main__':
    turtle_follower()