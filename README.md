# My awesome CMake project template
Because life is weird enough to even care about understanding CMake

## What do
Basically all you have to do is clone this, move your source somewhere in here, then open CMakeLists.txt at the root of this project, change the project name (if you want) and add your subdirectory where your CMakeLists.txt is located. Then you open `cmake/projectPreferences.cmake` to configure file location, compiler flags and that's it.

Inside `src/executable` you'll find an sample project with a CMakeLists that usually would be the recommended way (in my opinion) on doing the thing.

## Is this useful?
For you? Probably (not). As you might (or not) know, there's a lot of CMake structures that can be done to achieve more or less the same result, this is my own take on doing my own setup for my own projects, just *enough* for all my future projects.

## Plataforms I've tested this
- Visual Studio 2010 (WinXP, CMake 3.13)
- Visual Studio 2022 (Win10, latest CMake version at the time of writing this)
- CodeBlocks (Linux Mint 21, latest CMake version offered by the maintainers)

## Toolchains
Inside `cmake/toolchains` you'll find a few toolchains you can use with `-DCMAKE_TOOLCHAIN_FILE` when initializing your CMake project, mostly used for crosscompiling. Currently there are toolchains for crosscompiling on Windows using MinGW and other architectures on Linux, feel free to pull request yours into this repository, following this template:
```cmake
#############################################################################
## Copyright (c) 1970, P7COMunications LLC                                  #
## Author(s): John Doe <john@example.com>                                   #
## Date: 01/Jan/1970                                                        #
#############################################################################
## Purpose: Toolchain template                                              #
#############################################################################
set(CMAKE_SYSTEM_NAME               SYSTEM_NAME_HERE)
set(CMAKE_SYSTEM_PROCESSOR          TARGET_ARCHITECTURE_HERE)
set(CMAKE_AR                        "")
set(CMAKE_ASM_COMPILER              "")
set(CMAKE_C_COMPILER                "")
set(CMAKE_CXX_COMPILER              "")
set(CMAKE_LINKER                    "")
set(CMAKE_OBJCOPY                   "")
set(CMAKE_RANLIB                    "")
set(CMAKE_SIZE                      "")
set(CMAKE_STRIP                     "")
set(CMAKE_C_FLAGS                   "")
set(CMAKE_CXX_FLAGS                 "")
set(CMAKE_EXE_LINKER_FLAGS          "")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM     NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY     ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE     ONLY)
```
Be sure to fill appropriately your name/username, date of creation, copyright year and purpose/what your toolchain is doing. Failure of doing so may delay the merging process.
###### *who am i kidding, nobody will commit to this repo anyway*

## What's next
You're all set, go and use this project as you want.
If you happen to actually use this on one of your projects, I'd love to know about it, send me an [email](mailto:pancho7532@p7com.net) or post an issue in this repository, I'll take an look and if it's good, I'll put you on the hall of fame at the bottom of this README.

## Hall of fame
*You could be the first in here!*