execute_process(COMMAND "/home/drojas/lawrence_wire/build/interbotix_xs_modules/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/drojas/lawrence_wire/build/interbotix_xs_modules/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
