#
# Main component makefile.
#
# This Makefile can be left empty. By default, it will take the sources in the 
# src/ directory, compile them and link them into lib(subdirectory_name).a 
# in the build directory. This behaviour is entirely configurable,
# please read the ESP-IDF documents if you need to do this.
#

ifdef CONFIG_WS2812B_INVERTED
CFLAGS +=-DWS2812B_INVERTED=1
endif

ifdef  CONFIG_WS2812B_USE_PL9823_TIMING
CFLAGS +=-DWS2812B_USE_PL9823_TIMING=1
endif


