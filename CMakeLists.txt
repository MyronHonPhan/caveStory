cmake_minimum_required(VERSION 3.22.2)

set(CMAKE_CXX_STANDARD 14)

project(a.out)

add_executable(${PROJECT_NAME} Testing.cpp src/graphics.cpp)

add_subdirectory(external/SDL2)

target_include_directories(${PROJECT_NAME} PUBLIC external/SDL2/include)

target_link_libraries(${PROJECT_NAME} SDL2)