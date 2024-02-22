#!/bin/bash
# You shouldn't execute this RIGHT AWAY
# Check beforehand what files are you deleting since every extension listed here to be deleted are usually things you'll want to keep.
rm -rf CMakeFiles/
rm cmake_install.cmake
rm CMakeCache.txt
rm Makefile
rm *.cbp
rm *.layout
###########
rm -rf src/CMakeFiles/
rm src/cmake_install.cmake
rm src/CMakeCache.txt
rm src/Makefile
rm src/*.cbp
##########
rm -rf src/executable/CMakeFiles/
rm src/executable/cmake_install.cmake
rm src/executable/CMakeCache.txt
rm src/executable/Makefile
rm src/executable/*.cbp
##########
rm -rf src/shared/CMakeFiles/
rm src/shared/cmake_install.cmake
rm src/shared/CMakeCache.txt
rm src/shared/Makefile
rm src/shared/*.cbp