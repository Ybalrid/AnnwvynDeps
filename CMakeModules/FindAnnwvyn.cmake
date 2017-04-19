message("This scipt will only works if you cloned the Annwvyn Enigine inside the AnnwvynSDK location, or set the AnnwvynInstall envvar where you have the Annwvyn sources")

find_package(OGRE COMPONENTS Overlay HlmsPbs HlmsUnlit)
if(NOT OGRE_FOUND)
    message(FATAL_ERROR "We need to find Ogre, please set OGRE_HOME or AnnwvynSDK64 to a correct value")
endif()

find_path(Annwvyn_INCLUDE_DIR Annwvyn.h 
    HINTS $ENV{AnnwvynSDK64} $ENV{AnnwvynSDK64}/Annwvyn ${AnnwvynInstall} 
    PATH_SUFFIXES include)

find_library(Annwvyn_LIBRARY Annwvyn libAnnwvyn Annwvyn.lib libAnnwvyn.a 
    HINTS $ENV{AnnwvynSDK64} $ENV{AnnwvynSDK64}/Annwvyn ${AnnwvynInstall} 
    PATH_SUFFIXES lib)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Annwvyn DEFAULT_MSG Annwvyn_INCLUDE_DIR Annwvyn_LIBRARY)

set(Annwvyn_INCLUDE_DIRS 
    ${Annwvyn_INCLUDE_DIR}
    )

set(Annwvyn_LIBRARIES 
    ${Annwvyn_LIBRARY} 
    ${OGRE_LIBRARIES} 
    ${OGRE_HlmsPbs_LIBRARIES} 
    ${OGRE_HlmsUnlit_LIBRARIES} 
    ${OGRE_Overlay_LIBRARIES}
    )


mark_as_advanced(Annwvyn_INCLUDE_DIR Annwvyn_LIBRARY)
