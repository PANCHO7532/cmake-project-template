@echo off
REM You shouldn't execute this RIGHT AWAY
REM Check beforehand what files are you deleting since every extension listed here to be deleted are usually things you'll want to keep.
rmdir /s /q CMakeFiles
del cmake_install.cmake
del CMakeCache.txt
del Makefile
del *.sln
del *.suo
del *.sdf
del *.vcproj
del *.vcxproj
del *.vcxproj.filters
del *.vcxproj.user
del *.cbp
del *.layout
REM ####################
rmdir /s /q src\executable\CMakeFiles
del src\executable\cmake_install.cmake
del src\executable\CMakeCache.txt
del src\executable\Makefile
del src\executable\*.sln
del src\executable\*.suo
del src\executable\*.sdf
del src\executable\*.vcproj
del src\executable\*.vcxproj
del src\executable\*.vcxproj.filters
del src\executable\*.vcxproj.user
del src\executable\*.cbp
del src\executable\*.layout
REM ####################
rmdir /s /q CMakeFiles
del src\shared\cmake_install.cmake
del src\shared\CMakeCache.txt
del src\shared\Makefile
del src\shared\*.sln
del src\shared\*.suo
del src\shared\*.sdf
del src\shared\*.vcproj
del src\shared\*.vcxproj
del src\shared\*.vcxproj.filters
del src\shared\*.vcxproj.user
del src\shared\*.cbp
del src\shared\*.layout
REM ####################
pause