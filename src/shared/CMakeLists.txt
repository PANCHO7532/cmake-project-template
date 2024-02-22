#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: CMakeLists.txt example for shared libs.                         #
#############################################################################
project(sharedExample)
set(SRCFILES shared.cpp)
add_library(sharedExample SHARED ${SRCFILES})