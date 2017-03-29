#!/usr/bin/env python

import pygame 
import rospy
from blink_led.msg import Joy


def talker():
	pub = rospy.Publisher('joystick',Joy,queue_size=10)
	rospy.init_node('collect_joy',anonymous=True)
	pygame.init()
	pygame.joystick.init()
	joy1 = pygame.joystick.Joystick(0)
	joy1.init()
	print "Joystick's name : "+joy1.get_name() + " id : "+str(joy1.get_id())
	rate = rospy.Rate(100)

	while True:
		for event in pygame.event.get():
			if event.type == pygame.JOYAXISMOTION:
				pass
			x = joy1.get_axis(0)*512.0+512
			y = joy1.get_axis(1)*512.0+512	
			throttle = joy1.get_axis(3)*100.0+100
			rotVal = joy1.get_axis(2)*100.0;
			x = int(x)
			y = int(y)
			throttle = int(throttle)
			rotVal = int(rotVal)

			x += 1000
			y += 1000
			throttle += 100
			rotVal += 100

			finx = 'x' + str(x) 
			finy = 'y' + str(y) 
			finthrottle = 't' + str(throttle) 
			finrotVal = 'r' + str(rotVal) 

			joy = Joy()
			joy.x = finx
			joy.y = finy
			joy.rot = finrotVal
			joy.throttle = finthrottle

			rospy.loginfo(joy)
			pub.publish(joy)
			rate.sleep()


if __name__ == '__main__':
    try:
        talker()
        print 'a'
    except rospy.ROSInterruptException:
        pass


