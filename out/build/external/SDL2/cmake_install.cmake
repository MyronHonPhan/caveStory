# Install script for directory: /Users/myronphan/caveStory/external/SDL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/myronphan/caveStory/out/build/external/SDL2/libSDL2-2.0.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/myronphan/caveStory/out/build/external/SDL2/libSDL2main.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2main.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/myronphan/caveStory/out/build/external/SDL2/libSDL2.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/CMakeFiles/Export/lib/cmake/SDL2/SDL2staticTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/myronphan/caveStory/external/SDL2/SDL2Config.cmake"
    "/Users/myronphan/caveStory/out/build/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/myronphan/caveStory/external/SDL2/include/SDL.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_assert.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_atomic.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_audio.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_bits.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_blendmode.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_clipboard.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_android.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_emscripten.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_iphoneos.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_macosx.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_minimal.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_os2.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_pandora.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_windows.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_config_winrt.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_copying.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_cpuinfo.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_egl.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_endian.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_error.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_events.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_filesystem.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_gamecontroller.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_gesture.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_haptic.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_hidapi.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_hints.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_joystick.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_keyboard.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_keycode.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_loadso.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_locale.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_log.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_main.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_messagebox.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_metal.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_misc.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_mouse.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_mutex.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_name.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengl.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengl_glext.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles2.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles2_gl2.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles2_gl2ext.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles2_gl2platform.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_opengles2_khrplatform.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_pixels.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_platform.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_power.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_quit.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_rect.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_render.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_rwops.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_scancode.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_sensor.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_shape.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_stdinc.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_surface.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_system.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_syswm.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_assert.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_common.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_compare.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_crc32.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_font.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_fuzzer.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_harness.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_images.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_log.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_md5.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_memory.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_test_random.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_thread.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_timer.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_touch.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_types.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_version.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_video.h"
    "/Users/myronphan/caveStory/external/SDL2/include/SDL_vulkan.h"
    "/Users/myronphan/caveStory/external/SDL2/include/begin_code.h"
    "/Users/myronphan/caveStory/external/SDL2/include/close_code.h"
    "/Users/myronphan/caveStory/out/build/external/SDL2/include/SDL_config.h"
    "/Users/myronphan/caveStory/out/build/external/SDL2/include/SDL_revision.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E create_symlink
              "libSDL2-2.0.dylib" "libSDL2.dylib"
              WORKING_DIRECTORY "/Users/myronphan/caveStory/out/build/external/SDL2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/libSDL2.dylib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/myronphan/caveStory/out/build/external/SDL2/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/myronphan/caveStory/out/build/external/SDL2/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/Users/myronphan/caveStory/external/SDL2/sdl2.m4")
endif()

