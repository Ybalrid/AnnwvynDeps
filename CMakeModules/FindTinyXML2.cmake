#Copyright 2017 Arthur Brianville (Ybalrid)

#Do what you want with this file

#This file is for finding TinyXML2 on windows 64 without too much trouble for the Annwvyn engine

message(${TinyXML2_ROOT})

find_path (TinyXML2_INCLUDE_DIR tinyxml2.h 
    HINTS ${TinyXML2_ROOT})

find_library(TinyXML2_LIBRARY tinyxml2.lib libtinyxml2.a tinyxml2 libtinyxml2 
    HINTS ${TinyXML2_ROOT} 
    PATH_SUFFIXES tinyxml2 tinyxml2/bin tinyxml2/bin/tinyxml2/ tinyxml2/bin/tinyxml2/x64-Release-Lib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(TinyXML2 DEFAULT_MSG TinyXML2_LIBRARY TinyXML2_INCLUDE_DIR)

mark_as_advanced(TinyXML2_INCLUDE_DIR TinyXML2_LIBRARY)

set (TinyXML2_INCLUDE_DIRS ${TinyXML2_INCLUDE_DIR})
set (TinyXML2_LIBRARIES ${TinyXML2_LIBRARY})
    
