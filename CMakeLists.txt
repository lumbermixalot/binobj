cmake_minimum_required(VERSION 3.25)

# In CMakeLists.txt before defining targets
# VSCode: we can ask CMake to generate a compile_commands.json file
# that helps the text editor figure out how the project is organized.
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Manually enable the USE_FOLDERS global property to allow CMake to organize files by folders.
# This is important for Visual Studio (and maybe XCode?)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Set project name
project(
    binobj # Name of the project, which will also be the name of the visual studio solution if you use it
    VERSION 0.0.0 # Any version number
    LANGUAGES C # Programming languages used by the project
)

# Set compiler flags
set(CMAKE_C_FLAGS 
    "/O2 /GS- /D NDEBUG /W3 /D _CRT_SECURE_NO_WARNINGS /nologo")

# Include the source file
add_executable(binobj binobj.c)

# Set the output directory for the executable (optional)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
