#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import pygame

def talker():
	pub = rospy.Publisher('Stream1',String,queue_size=10)
	rospy.init_node('talker',anonymous=True)
	rate = rospy.Rate(10)
	pygame.init()
	pygame.joystick.init()
	if pygame.joystick.get_init() == 1:
			print("Module initialized")
	joystickinit = pygame.joystick.Joystick(0)
	print "Joystick's name : "+joystickinit.get_name() + " id : "+str(joystickinit.get_id())
	joystickinit.init()
	joystick = joystickinit
	while not rospy.is_shutdown():
		for event in pygame.event.get():
				if event.type == pygame.JOYAXISMOTION :
					pass

		x = int(joystick.get_axis(0)*512.0+512)
		y = int(joystick.get_axis(1)*512.0+512)
		throttle = int(joystick.get_axis(3)*100.0+100)
		rotVal = int(joystick.get_axis(2)*100.0)

		print ("x : "+str(x)+" y : "+str(y))			
		print("Throttle : "+str(throttle))
		print("Rotation Value: "+str(rotVal))

		text = 'x'+str(x)+'y'+str(y)+'r'+str(rotVal)+'t'+str(throttle)
		rospy.loginfo(str(text))
		pub.publish(str(text))
		rate.sleep()


if __name__ == '__main__':
	try:
		talker()
	except rospy.ROSInterruptException:
		pass		