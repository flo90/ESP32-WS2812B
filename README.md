# ESP32-WS2812B
This tiny library useses the remote module of an esp32 to control WS2812B or PL9823 LED's.

## Features
* Control WS2812B or PL9823 LED's
* Invert signal for one transistor level shifter
* No realtime issues due to the use of the RMT Module
* Configurable through 'make menuconfig'

## Usage
Create a new subfolder called 'components' in your project root directory (not in 'main').
Clone or add this repo as an submodule to 'components/'. As the repo name 'ESP32-WS2812B' was just used to clarify that this library is for the ESP32 only, you may change the target folder name to something handy, e.g WS2812B.

Git clone example (from project root):

git clone https://github.com/flo90/ESP32-WS2812B.git components/WS2812B

git submodule add https://github.com/flo90/ESP32-WS2812B.git components/WS2812B

After this is done, add the following statement before the 'include' statement in the Makefile located in the projects root directory:
EXTRA_COMPONENT_DIRS := components/WS2812B

A menuconfig entry called "WS2812B config" should appear in the "Component config" submenu.

After including WS2812B.h (#include <WS2812B.h>) the following function are available:

WS2812B_init(...) initializes the library. The size during initialization is used to allocate enought memory, therefore this is the upper limit for setting LED's.

WS2812B_setLeds(...) sets the leds. Do not call this function too fast as the library is currently not protected against calling WS2812B_setLeds(...) while a previous transmission is still in progress.

WS2812B_deInit() deinitializes the library. This will remove the RMT driver and frees the memory allocated before.

## Level shifter (inverting)
             ^ 5V
             |
            --- 
            | |
            | |
            ---
             |
             |---> to LED
             |
             –
    gpio>---|  N-FET
             –
             |
             |
             |
            --- GND

## Test results
The library was tested with 90 x WS2812B LED's and an 5 x 5 x 5 LED cube (PL9823) without any problems.
