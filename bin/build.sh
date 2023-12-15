#!/bin/bash

set -ex

rm -f *.o *.exe *.err
source ~/sdk/ow2/owsetenv.sh
DOS_INCLUDE=$WATCOM/h wcl386 -bt=dos -ldos4g -otexan -zp8 -5r -fm -ms -wx ../dhry2/dhry_2.c ../dhry2/dhry_1.c
DOS_INCLUDE=$WATCOM/h wcl -bt=dos -ldos -otexan -fm -ms -wx ../ldcvt/ldcvt.c
rm -f *.o