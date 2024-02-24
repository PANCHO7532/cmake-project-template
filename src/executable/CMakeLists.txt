#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: CMakeLists.txt example for projects.                            #
#############################################################################
project(executableExample)
include_directories(mathlib .)
add_definitions(-DTEST=7532)
set(SRCFILES main.cpp)
set(HEADERFILES logutil.h)
set(MATHLIBSRC mathlib/math.cpp)
set(MATHLIBHEADERS mathlib/mathlib.h)
# To an source to be added properly in source_group, it must follow these rules:
# 1) It mustn't be included in another folder inside this project
# 2) It must be added to be "compiled" on add_executable and add_library
# If it's an asset, you should make an separate set with all of them and then set as HEADER_FILE_ONLY using the following line of code:
# set_source_files_properties(${HEADERFILES} ${MATHLIBHEADERS} PROPERTIES HEADER_FILE_ONLY ON)
# Or else you won't see it on Visual Studio.
source_group("Header Files" FILES ${HEADERFILES})
source_group("Header Files\\mathlib" FILES ${MATHLIBHEADERS})
source_group("Source Files" ${SRCFILES})
source_group("Source Files\\mathlib" FILES ${MATHLIBSRC})
add_executable(executableExample ${SRCFILES} ${MATHLIBSRC} ${HEADERFILES} ${MATHLIBHEADERS})