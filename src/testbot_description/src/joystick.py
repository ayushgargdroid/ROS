#!/usr/bin/env python
import pygame
import time
import serial
import math
from testbot_description.msg import Data
import rospy

class BigController():
	def __init__(self):
		rospy.init_node('joystick_data',anonymous=True)
		global joystick
		global ser
		pygame.init()
		pygame.joystick.init()
		if pygame.joystick.get_init() == 1:
			print("Module initialized")
		joystickinit = pygame.joystick.Joystick(0)
		print "Joystick's name : "+joystickinit.get_name() + " id : "+str(joystickinit.get_id())
		joystickinit.init()
		joystick = joystickinit
		self.main()

	def mapVal(self,a,b,c,d,e):
		return (a-b)*(e-d)/(c-b) + d

	def getAngle(self,x,y):
		if(x>512-self.buff_give and x<512+self.buff_give):
			if(y>512+self.buff_give):
				tangle = 270
			elif(y<512-self.buff_give):
				tangle = 90
			else:
				tangle = 0
			return tangle
		m1 = (y-512.0)/(x-512.0)
		m2 = (512.0-512.0)/(1023.0-0.0)
		tangle =int(math.atan((m2-m1)/(1+m1*m2))*57.3)
		if(x < 512):
			tangle+=180
		elif(y>512):
			tangle+=360
		if(tangle==360):
			tangle = 0
		if(x>512-self.buff_give and x<512+self.buff_give and y>512-self.buff_give and y<512+self.buff_give):
			tangle = 0
		return tangle


	def main(self):
		clock = pygame.time.Clock()
		global joystick 
		print joystick.get_name()

		leftr = leftf = rightr = rightf = x = y = pressed = throttle = rot = 0
		buffVal = 50
		centerBuff = 50
		prevx = prevy = 512
		prevRotVal = 0
		bufferRotVal = 20
		self.buff_give = centerBuff

		pub = rospy.Publisher('joystick_stream',Data,queue_size=10)

		while not rospy.is_shutdown():
			for event in pygame.event.get():
				if event.type == pygame.JOYAXISMOTION :
					print ""
					

				if event.type == pygame.JOYBUTTONDOWN:
					for button in range(joystick.get_numbuttons()):
						if joystick.get_button(button) is 1:
							pressed = button
					
			x = joystick.get_axis(0)*512.0+512
			y = joystick.get_axis(1)*512.0+512	
			throttle = joystick.get_axis(3)*100.0+100
			rotVal = joystick.get_axis(2)*100.0;
			
			if rotVal - prevRotVal >=bufferRotVal:
				rotVal = prevRotVal + bufferRotVal
			elif rotVal - prevRotVal <=-bufferRotVal:
				rotVal = prevRotVal - bufferRotVal
			elif rotVal - prevRotVal <=-bufferRotVal:
				rotVal = prevRotVal - bufferRotVal
			elif rotVal - prevRotVal >= bufferRotVal:
				rotVal = prevRotVal + bufferRotVal

			top = self.mapVal(throttle,0,200,0,255)

			if(x>1023): 
				x = 1023
			if(y>1023): 
				y = 1023
			if(x-prevx>buffVal):
				x = prevx + buffVal
			elif(x-prevx<-buffVal):
				x = prevx - buffVal
			if(y-prevy>buffVal):
				y = prevy + buffVal
			elif(y-prevy<-buffVal):
				y = prevy - buffVal
			if(x<=512+centerBuff and x>=512-centerBuff and y<=512+centerBuff and y>=512-centerBuff):
				leftf = leftr = rightf = rightr = 0
			elif(x<=512+centerBuff and x>=512-centerBuff):
				if(y>=512+centerBuff):
					rightf = self.mapVal(y,512+centerBuff,1023,0,top)
					rightr = 0
					leftr = self.mapVal(y,512+centerBuff,1023,0,top)
					leftf = 0
				elif(y<=512-centerBuff):
					rightr = self.mapVal(y,0,512-centerBuff,top,0)
					rightf = 0
					leftf = self.mapVal(y,0,512-centerBuff,top,0)
					leftr = 0
			elif(y<=512+centerBuff and y>=512-centerBuff):
				if(x>=512+centerBuff):
					leftf = self.mapVal(x,512+centerBuff,1023,0,top)
					leftr = 0
					rightf = 0
					rightr = 0
				elif(x<512-centerBuff):
					leftr = 0
					leftf = 0
					rightf = 0
					rightr = self.mapVal(x,0,512-centerBuff,top,0)
			else:
				refx = refy = 0
				if(y<512):
					if(x>512):
						refy = y
						refx = 1023 - refy
						if(x<=refx):
							leftr = 0
							leftf = self.mapVal(y,0,511,top,0)
							rightf = 0
							rightr = self.mapVal(x,512,refx,top,top/2.0)

						else:
							refx = x
							refy = 1023 - refx
							leftr = 0
							leftf = self.mapVal(x,512,1023,0,top)
							rightf = 0
							rightr = self.mapVal(y,refy,511,top/2.0,0)

					else:
						refy = refx = y
						if(x>=refx):
							rightf = 0
							rightr = self.mapVal(y,0,511,top,0)
							leftr = 0
							leftf = self.mapVal(x,refx,511,top/2.0,top)

						else:
							refx = refy = x
							rightf = 0
							rightr = self.mapVal(x,0,511,top,0)
							leftr = 0
							leftf = self.mapVal(y,refy,511,top/2.0,0)

				else:
					if(x<512):
						refy = y
						refx = 1023 - refy
						if(x>=refx):
							rightr = 0
							rightf = self.mapVal(y,512,1023,0,top)
							leftr = self.mapVal(x,refx,511,0,top)
							leftf = 0

						#else:
						#	refx = x
						#	refy = 1023 - refx
						#	leftf = 0
						#	leftr = self.mapVal(y,512,1023,0,top)
						#	rightr = 0
						#	rightf = self.mapVal(x,refx,511,0,top)

					else:
						refx = refy = y
						#if(x>refx):
						#	refx = refy = x
						#	rightr = 0
						#	rightf = self.mapVal(x,512,1023,0,top)
						#	leftr = 0
						#	leftf = self.mapVal(y,512,refy,top,0)

						if(x<=refx):
							refx = refy = y
							leftf = 0
							leftr = self.mapVal(y,512,1023,0,top)
							rightr = 0
							rightf = self.mapVal(x,512,refx,top,0)

			prevx = x
			prevy = y

			if x<=512+centerBuff and x>=512-centerBuff and y<=512+centerBuff and y>=512-centerBuff:
				
				if(rotVal<-centerBuff):
					leftf = 0
					leftr = self.mapVal(rotVal,0,-100,0,top)
					rightf = 0
					rightr = self.mapVal(rotVal,0,-100,0,top)
				elif(rotVal>centerBuff):
					leftr = 0
					leftf = self.mapVal(rotVal,0,100,0,top)
					rightr = 0
					rightf = self.mapVal(rotVal,0,100,0,top)
				prevRotVal = rotVal

			if rotVal == 0:
				prevRotVal = 0

			leftf = int(leftf)
			leftr = int(leftr)
			rightf = int(rightf)
			rightr = int(rightr)
			
			print ("x : "+str(x)+" y : "+str(y))			
			print("leftf : "+str(leftf)+" rightf : "+str(rightf))
			print("leftr : "+str(leftr)+" rightr : "+str(rightr))
			print("Throttle : "+str(throttle))
			print("Rotation Value: "+str(rotVal))

			t = Data()
			t.leftf = leftf
			t.leftr = leftr
			t.rightf = rightf
			t.rightr = rightr
			t.angle = self.getAngle(x,y)
			pub.publish(t)

			clock.tick(20)
			if pressed == 2:
				break
				




BigController()