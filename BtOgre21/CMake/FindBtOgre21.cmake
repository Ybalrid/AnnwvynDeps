# - Try to find BtOgre21

set(BtOgre21_ROOT "notSet" CACHE PATH "Where your BtOgre21 instlallation is")

find_path(BtOgre21_INCLUDE_DIR BtOgre.hpp HINTS ${BtOgre21_ROOT}/include PATH_SUFFIXES BtOgre21)
find_library(BtOgre21_LIBRARY libBtOgre21.a BtOgre21.lib libBtOgre21 BtOgre21 HINTS ${BtOgre21_ROOT}/lib PATH_SUFFIXES BtOgre21 BtOgre lib)


include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(BtOgre21 DEFAULT_MSG BtOgre21_LIBRARY BtOgre21_INCLUDE_DIR)

mark_as_advanced(BtOgre21_INCLUDE_DIR BtOgre21_LIBRARY)

set(BtOgre21_INCLUDE_DIRS ${BtOgre21_INCLUDE_DIR})
set(BtOgre21_LIBRARIES ${BtOgre21_LIBRARY})

