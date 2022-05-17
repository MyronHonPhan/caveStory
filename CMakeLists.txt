cmake_minimum_required(VERSION 3.22.2)

set(CMAKE_CXX_STANDARD 14)

project(a.out)

add_executable(${PROJECT_NAME} Source.cpp src/graphics.cpp src/game.cpp src/Input.cpp src/AnimatedSprite.cpp src/Level.cpp src/Player.cpp src/Sprite.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC external/SDL2/include PUBLIC external/SDL2_image)

target_link_libraries(${PROJECT_NAME} "-framework SDL2" "-framework SDL2_image")