# ESP32-WS2812B

## Usage
Just copy the folder ESP32-WS2812B into your project and add it to the build process. Call WS2812B_init(...) to initialize the library. The size during initialization is used to allocate enought memory therefore this is the upper limit for setting LED's.
Use WS2812B_setLeds(...) to set the LED's. Do not call this function too fast as the library is currently not protected against calling WS2812B_setLeds(...) while a previous transmission is still in progress.
You can use WS2812B_deInit() to deinitialize the library, this will remove the RMT driver and frees the memory allocated before.

## Test results
The library was tested with 90 x WS2812B LED's without any problems.
