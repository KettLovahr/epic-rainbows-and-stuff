#!/bin/bash
cd "$(dirname "$0")" || exit

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$PWD/lib"

luajit main.lua
