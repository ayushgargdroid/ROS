# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "testbot_description: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itestbot_description:/home/ayushgarg/catkin_ws/src/testbot_description/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(testbot_description_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_custom_target(_testbot_description_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "testbot_description" "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(testbot_description
  "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/testbot_description
)

### Generating Services

### Generating Module File
_generate_module_cpp(testbot_description
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/testbot_description
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(testbot_description_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(testbot_description_generate_messages testbot_description_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_dependencies(testbot_description_generate_messages_cpp _testbot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(testbot_description_gencpp)
add_dependencies(testbot_description_gencpp testbot_description_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS testbot_description_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(testbot_description
  "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/testbot_description
)

### Generating Services

### Generating Module File
_generate_module_eus(testbot_description
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/testbot_description
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(testbot_description_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(testbot_description_generate_messages testbot_description_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_dependencies(testbot_description_generate_messages_eus _testbot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(testbot_description_geneus)
add_dependencies(testbot_description_geneus testbot_description_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS testbot_description_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(testbot_description
  "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/testbot_description
)

### Generating Services

### Generating Module File
_generate_module_lisp(testbot_description
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/testbot_description
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(testbot_description_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(testbot_description_generate_messages testbot_description_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_dependencies(testbot_description_generate_messages_lisp _testbot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(testbot_description_genlisp)
add_dependencies(testbot_description_genlisp testbot_description_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS testbot_description_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(testbot_description
  "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/testbot_description
)

### Generating Services

### Generating Module File
_generate_module_nodejs(testbot_description
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/testbot_description
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(testbot_description_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(testbot_description_generate_messages testbot_description_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_dependencies(testbot_description_generate_messages_nodejs _testbot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(testbot_description_gennodejs)
add_dependencies(testbot_description_gennodejs testbot_description_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS testbot_description_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(testbot_description
  "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/testbot_description
)

### Generating Services

### Generating Module File
_generate_module_py(testbot_description
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/testbot_description
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(testbot_description_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(testbot_description_generate_messages testbot_description_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ayushgarg/catkin_ws/src/testbot_description/msg/Data.msg" NAME_WE)
add_dependencies(testbot_description_generate_messages_py _testbot_description_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(testbot_description_genpy)
add_dependencies(testbot_description_genpy testbot_description_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS testbot_description_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/testbot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/testbot_description
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(testbot_description_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/testbot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/testbot_description
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(testbot_description_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/testbot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/testbot_description
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(testbot_description_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/testbot_description)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/testbot_description
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(testbot_description_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/testbot_description)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/testbot_description\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/testbot_description
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(testbot_description_generate_messages_py std_msgs_generate_messages_py)
endif()
