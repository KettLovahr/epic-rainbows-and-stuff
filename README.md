This is a silly experiment I wrote in a couple minutes, using LuaJIT's built in FFI features to expose some Raylib library functions to the Lua side.

## Prerequisites
- LuaJIT
- Raylib shared library (.so or .dll)

There is a `run.sh` script for UNIX systems, the script will add the `lib/` directory to `LD_LIBRARY_PATH` so you can place the libraylib.so file there, it will then run `main.lua` which will run the demo.
