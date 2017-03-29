# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "blink_led: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iblink_led:/home/ayushgarg/catkin_ws/src/blink_led/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(blink_led_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_custom_target(_blink_led_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blink_led" "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" ""
)

get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_custom_target(_blink_led_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blink_led" "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" ""
)

get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_custom_target(_blink_led_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blink_led" "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led
)
_generate_msg_cpp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led
)

### Generating Services
_generate_srv_cpp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led
)

### Generating Module File
_generate_module_cpp(blink_led
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(blink_led_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(blink_led_generate_messages blink_led_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_dependencies(blink_led_generate_messages_cpp _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_cpp _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_cpp _blink_led_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blink_led_gencpp)
add_dependencies(blink_led_gencpp blink_led_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blink_led_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led
)
_generate_msg_eus(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led
)

### Generating Services
_generate_srv_eus(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led
)

### Generating Module File
_generate_module_eus(blink_led
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(blink_led_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(blink_led_generate_messages blink_led_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_dependencies(blink_led_generate_messages_eus _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_eus _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_eus _blink_led_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blink_led_geneus)
add_dependencies(blink_led_geneus blink_led_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blink_led_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led
)
_generate_msg_lisp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led
)

### Generating Services
_generate_srv_lisp(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led
)

### Generating Module File
_generate_module_lisp(blink_led
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(blink_led_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(blink_led_generate_messages blink_led_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_dependencies(blink_led_generate_messages_lisp _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_lisp _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_lisp _blink_led_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blink_led_genlisp)
add_dependencies(blink_led_genlisp blink_led_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blink_led_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led
)
_generate_msg_nodejs(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led
)

### Generating Services
_generate_srv_nodejs(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led
)

### Generating Module File
_generate_module_nodejs(blink_led
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(blink_led_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(blink_led_generate_messages blink_led_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_dependencies(blink_led_generate_messages_nodejs _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_nodejs _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_nodejs _blink_led_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blink_led_gennodejs)
add_dependencies(blink_led_gennodejs blink_led_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blink_led_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led
)
_generate_msg_py(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led
)

### Generating Services
_generate_srv_py(blink_led
  "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led
)

### Generating Module File
_generate_module_py(blink_led
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(blink_led_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(blink_led_generate_messages blink_led_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/srv/Not.srv" NAME_WE)
add_dependencies(blink_led_generate_messages_py _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Num.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_py _blink_led_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/blink_led/msg/Joy.msg" NAME_WE)
add_dependencies(blink_led_generate_messages_py _blink_led_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blink_led_genpy)
add_dependencies(blink_led_genpy blink_led_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blink_led_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blink_led
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(blink_led_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/blink_led
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(blink_led_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blink_led
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(blink_led_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/blink_led
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(blink_led_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blink_led
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(blink_led_generate_messages_py std_msgs_generate_messages_py)
endif()
