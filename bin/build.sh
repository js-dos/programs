#!/bin/bash

set -ex

export WATCOM="$HOME/sdk/openwatcom"
export PATH="$PATH:$WATCOM/binl"
export LIB="$LIB:$WATCOM/lib386:$WATCOM/lib386/dos"


rm -f *.o dhry_2.exe
source "$WATCOM/owsetenv.sh"
wcl386 -bt=dos -ldos4g -otexan -zp8 -5r -ms -DCOD -I"$WATCOM/h" ../dhry2/dhry_2.c ../dhry2/dhry_1.c
rm -f *.o