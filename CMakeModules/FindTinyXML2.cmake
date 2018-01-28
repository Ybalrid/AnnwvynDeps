#Copyright 2017 Arthur Brianville (Ybalrid)

#Do what you want with this file

#This file is for finding TinyXML2 on windows 64 without too much trouble for the Annwvyn engine
#This file expect you to set TinyXML2_ROOT to the output folder of the "INSTALL" target built with
#CMake on the TinyXML2 project. And It expects you to use TinyXML2 as a *static* library

find_path (TinyXML2_INCLUDE_DIR tinyxml2.h
    HINTS ${TinyXML2_ROOT}/include)

find_library(TinyXML2_LIBRARY tinyxml2.lib libtinyxml2.a tinyxml2 libtinyxml2
    HINTS ${TinyXML2_ROOT}/lib
    PATH_SUFFIXES tinyxml2 tinyxml2/bin tinyxml2/bin/tinyxml2/ tinyxml2/bin/tinyxml2/x64-Release-Lib)

find_library(TinyXML2_LIBRARY_DEB tinyxml2d.lib libtinyxml2d.a tinyxml2d libtinyxml2d
    HINTS ${TinyXML2_ROOT}/lib
    PATH_SUFFIXES tinyxml2 tinyxml2/bin tinyxml2/bin/tinyxml2/ tinyxml2/bin/tinyxml2/x64-Debug-Lib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(TinyXML2 DEFAULT_MSG TinyXML2_LIBRARY TinyXML2_INCLUDE_DIR)

mark_as_advanced(TinyXML2_INCLUDE_DIR TinyXML2_LIBRARY TinyXML2_LIBRARY_DEB)

set (TinyXML2_INCLUDE_DIRS ${TinyXML2_INCLUDE_DIR})
if(NOT TinyXML2_LIBRARY_DEB)
    set (TinyXML2_LIBRARIES ${TinyXML2_LIBRARY})
else()
    set (TinyXML2_LIBRARIES optimized ${TinyXML2_LIBRARY} debug ${TinyXML2_LIBRARY_DEB})
endif()
