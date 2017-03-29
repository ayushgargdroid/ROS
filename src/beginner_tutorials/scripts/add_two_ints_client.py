#!/usr/bin/env python

import sys
import rospy
from beginner_tutorials.srv import *

def add_two_ints_client(x,y):
	rospy.wait_for_service('add_two_ints')
	try:
		add_two_ints = rospy.ServiceProxy('add_two_ints',AddTwoInts)
		resp1 = add_two_ints(x,y)
		return resp1.sum
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e

if __name__=="__main__":
	i = 0
	while(1):
		x = i+10
		y = i+20
		i += 50
		print "Requesting %s+%s"%(x,y)
		print "%s + %s = %s"%(x,y,add_two_ints_client(x,y)) 
