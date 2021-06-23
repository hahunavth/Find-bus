# Install script for directory: /home/kryo/Desktop/Tim-bus/cgraph

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/bkc" TYPE FILE FILES
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_basic_types.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_constants.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_constructors.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_datatype.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_error.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_interface.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_iqueue.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_istack.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_ivec.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_queue.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_topology.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_visitor.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_paths.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_rvec.h"
    "/home/kryo/Desktop/Tim-bus/cgraph/cgraph_types_internal.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kryo/Desktop/Tim-bus/b/cgraph/libcgraph.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kryo/Desktop/Tim-bus/b/cgraph/examples/cmake_install.cmake")
  include("/home/kryo/Desktop/Tim-bus/b/cgraph/ctc/cmake_install.cmake")

endif()

