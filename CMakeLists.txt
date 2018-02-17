cmake_minimum_required(VERSION 3.8)

#
# https://cmake.org/cmake/help/v3.0/command/project.html
# Stores name of project in PROJECT_NAME variable
# Also sets
# - PROJECT_SOURCE_DIR
# - <PROJECT-NAME>_SOURCE_DIR
# - PROJECT_BINARY_DIR
# - <PROJECT-NAME>_BINARY_DIR
#

project(myproject)

set(EXECUTABLE_NAME "myproject")


set(CMAKE_MODULE_PATH "$ENV{SFML_ROOT}\\cmake\\Modules\\")

#
# https://www.sfml-dev.org/tutorials/2.2/start-vc.php
# the sfml "main" library uses blackmagic get rid of the console window
# ( specifies the entry point as int main() ? )
# ( you still need to manually set subsystem: windows )
#   under configuration properties --> linker --> system ? )
#

find_package(SFML 2 REQUIRED system window graphics network audio main)

#
# https://cmake.org/cmake/help/v3.0/command/include_directories.html
# Add directories that the compiler will use to search for include files.
#

include_directories(${SFML_INCLUDE_DIR})

#
# https://cmake.org/cmake/help/v3.0/command/add_executable.html
# Adds an executable target to be built from specified source files.
# The actual executable filename will be <name>.exe on windows, <name> on linux 
#

add_executable(${EXECUTABLE_NAME} source/main.cpp)

#
# https://cmake.org/cmake/help/v3.3/command/target_link_libraries.html
# @target
#   - created by add_executable() or add_library()
# @item
#   - a library name
#   - a library target name
#   - a path to a library file
#   - a link flag
# target_link_libraries( < target > ... < item > ... ... )
#

target_link_libraries(${EXECUTABLE_NAME} ${SFML_LIBRARIES})

#
# Set the visual studio working directory. You're welcome.
# CMAKE_SOURCE_DIR is the root project directory
#

set_target_properties(${PROJECT_NAME} PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/data")

#
# Set the startup project to actually be our project,
# instead of default ALL_BUILD
# TODO: find out why this doesn't work
#

set_target_properties(${PROJECT_NAME} PROPERTIES VS_STARTUP_PROJECT ${PROJECT_NAME})

