#!/usr/bin/env python

import rospy

from interactive_markers.interactive_marker_server import *
from visualization_msgs.msg import *

def processFeedback(feedback):
	p = feedback.pose.position
	print feedback.marker_name + "is now at " + str(p.x) + ', ' + str(p.y) + ', ' + str(p.z)

def x_axis(box_control):
	box_control.orientation.x = 1
	return box_control
def y_axis(box_control):
	box_control.orientation.y = 1
	return box_control
def z_axis(box_control):
	box_control.orientation.z = 1
	return box_control

def getBoxController(axis=0):
	box_control = InteractiveMarkerControl()
	box_control.orientation.w = 1
	box_control.orientation.x = 0
	box_control.orientation.y = 0
	box_control.orientation.z = 0
	axis_sel = {0:x_axis,1:y_axis,2:z_axis}
	box_control = axis_sel[axis](box_control)
	return box_control

if __name__ == '__main__':
	rospy.init_node('simple_marker_server_node')

	server = InteractiveMarkerServer('simple_marker_server_node')

	int_marker = InteractiveMarker()
	int_marker.header.frame_id = 'base_link'
	int_marker.name = 'my_marker'
	int_marker.description = 'Simple 1-DOF Control'

	box_marker = Marker()
	box_marker.type = Marker.CUBE
	box_marker.scale.x = 0.45
	box_marker.scale.y = 0.45
	box_marker.scale.z = 0.45
	box_marker.color.r = 0.0
	box_marker.color.b = 0.5
	box_marker.color.a = 1.0

	box_control = InteractiveMarkerControl()
	box_control.always_visible = True
	box_control.markers.append(box_marker)

	int_marker.controls.append(box_control)

	box_control = getBoxController()
	box_control.name = 'move_x'
	box_control.interaction_mode = InteractiveMarkerControl.MOVE_AXIS
	int_marker.controls.append(box_control)

	box_control = getBoxController()
	box_control.name = 'rotate_x'
	box_control.interaction_mode = InteractiveMarkerControl.ROTATE_AXIS
	int_marker.controls.append(box_control)

	box_control = getBoxController(1)
	box_control.name = 'move_y'
	box_control.interaction_mode = InteractiveMarkerControl.MOVE_AXIS
	int_marker.controls.append(box_control)

	box_control = getBoxController(1)
	box_control.name = 'rotate_y'
	box_control.interaction_mode = InteractiveMarkerControl.ROTATE_AXIS
	int_marker.controls.append(box_control)

	box_control = getBoxController(2)
	box_control.name = 'move_z'
	box_control.interaction_mode = InteractiveMarkerControl.MOVE_AXIS
	int_marker.controls.append(box_control)

	box_control = getBoxController(2)
	box_control.name = 'rotate_z'
	box_control.interaction_mode = InteractiveMarkerControl.ROTATE_AXIS
	int_marker.controls.append(box_control)



	'''rotate_control = InteractiveMarkerControl()
	rotate_control.name = 'move_x'
	rotate_control.interaction_mode = InteractiveMarkerControl.MOVE_AXIS

	int_marker.controls.append(rotate_control)

	rotate1_control '''

	server.insert(int_marker,processFeedback)
	server.applyChanges()
	rospy.spin()