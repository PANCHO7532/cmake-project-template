#############################################################################
## Copyright (c) 2024, P7COMunications LLC                                  #
## Author(s): Francisco Medina <pancho7532@p7com.net>                       #
## Date: 15/Feb/2024                                                        #
#############################################################################
## Purpose: Preferences applied to this project                             #
#############################################################################
# Output directory for executables
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/bin")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-debug")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-release")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-minsizerel")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-releasewithdebuginfo")

# Output directory for shared libraries (.so/.dll)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-debug")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-release")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-minsizerel")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${CMAKE_SYSTEM_PROCESSOR}-releasewithdebuginfo")

# Output directory for static libraries (.lib/.a)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/${CMAKE_PROJECT_NAME}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/")

# Compiler flags
if(MSVC)
    # For Windows MSVC
    set(CMAKE_C_FLAGS                   "${CMAKE_C_FLAGS} /W4 /DWIN32 /D_WIN32 /D_WINDOWS")
    set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} /W4 /DWIN32 /D_WIN32 /D_WINDOWS")
    set(CMAKE_C_FLAGS_DEBUG             "/Od /Ob0 /Zi /Gm /RTC1 /DDEBUG /D_DEBUG")
    set(CMAKE_C_FLAGS_RELEASE           "/O2 /Ob2 /Oi /Ot /Gy /DNDEBUG")
    set(CMAKE_C_FLAGS_MINSIZEREL        "/O1 /Ob1 /Oi /Ot /Gy /DNDEBUG")
    set(CMAKE_C_FLAGS_RELWITHDEBINFO    "/O2 /Ob1 /Oi /Ot /Gy /Zi /DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG           "/Od /Ob0 /Zi /Gm /RTC1 /DDEBUG /D_DEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE         "/O2 /Ob2 /Oi /Ot /Gy /DNDEBUG")
    set(CMAKE_CXX_FLAGS_MINSIZEREL      "/O1 /Ob1 /Oi /Ot /Gy /DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO  "/O2 /Ob1 /Oi /Ot /Gy /Zi /DNDEBUG")
else()
    # For anything else (usually UNIX/Linux)
    set(CMAKE_C_FLAGS                   "${CMAKE_C_FLAGS} -Wall")
    set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -Wall")
    set(CMAKE_C_FLAGS_DEBUG             "-O0 -g2 -gdwarf-2 -DDEBUG -D_DEBUG")
    set(CMAKE_C_FLAGS_RELEASE           "-O3 -s -DNDEBUG")
    set(CMAKE_C_FLAGS_MINSIZEREL        "-Os -DNDEBUG")
    set(CMAKE_C_FLAGS_RELWITHDEBINFO    "-O2 -g2 -gdwarf-2 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_DEBUG           "-O0 -g2 -gdwarf-2 -DDEBUG -D_DEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE         "-O3 -s -DNDEBUG")
    set(CMAKE_CXX_FLAGS_MINSIZEREL      "-Os -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO  "-O2 -g2 -gdwarf-2 -DNDEBUG")
endif()