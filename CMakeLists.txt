cmake_minimum_required(VERSION 3.5)

set(NAME 006_programmable_pipeline_triangle_example_external_shaders)
project(${NAME})

set(CMAKE_CXX_STANDARD 17)

find_package(OpenGL REQUIRED)

set(BUILD_UTILS OFF CACHE BOOL "" FORCE)
set(BUILD_FRAMEWORK ON CACHE BOOL "" FORCE)
set(CMAKE_INSTALL_PREFIX "/Library/Frameworks")
add_subdirectory(dependencies/glew/build/cmake)

file(GLOB_RECURSE SOURCES sources/*)
file(GLOB_RECURSE HEADERS includes/*)

add_executable(${NAME} ${SOURCES} ${HEADERS})

# Detect and add SFML
set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake_modules" ${CMAKE_MODULE_PATH})
find_package(SFML 2 REQUIRED network audio graphics window system)

set(LIBRARIES
        ${OPENGL_gl_LIBRARY}
        glew
        ${SFML_LIBRARIES}
        ${SFML_DEPENDENCIES})

set(INCLUDES
        sources/
        includes/
        dependencies/glew/include
        ${SFML_INCLUDE_DIR})

target_link_libraries(${NAME} ${LIBRARIES})
target_include_directories(${NAME} PUBLIC ${INCLUDES})