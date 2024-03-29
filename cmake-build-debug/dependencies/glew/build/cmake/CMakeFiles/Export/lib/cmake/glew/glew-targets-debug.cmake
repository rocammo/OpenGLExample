#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GLEW::glew" for configuration "Debug"
set_property(TARGET GLEW::glew APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GLEW::glew PROPERTIES
  IMPORTED_LOCATION_DEBUG "/Library/Frameworks/GLEW.framework/Versions/2.1.0/GLEW"
  IMPORTED_SONAME_DEBUG "@rpath/GLEW.framework/Versions/2.1.0/GLEW"
  )

list(APPEND _IMPORT_CHECK_TARGETS GLEW::glew )
list(APPEND _IMPORT_CHECK_FILES_FOR_GLEW::glew "/Library/Frameworks/GLEW.framework/Versions/2.1.0/GLEW" )

# Import target "GLEW::glew_s" for configuration "Debug"
set_property(TARGET GLEW::glew_s APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GLEW::glew_s PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libGLEWd.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS GLEW::glew_s )
list(APPEND _IMPORT_CHECK_FILES_FOR_GLEW::glew_s "${_IMPORT_PREFIX}/lib/libGLEWd.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
