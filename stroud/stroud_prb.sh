#!/bin/bash
#
gfortran -c -g stroud_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling stroud_prb.f"
  exit
fi
rm compiler.txt
#
gfortran stroud_prb.o -L$HOME/libf77/$ARCH -lstroud
if [ $? -ne 0 ]; then
  echo "Errors linking and loading stroud_prb.o"
  exit
fi
rm stroud_prb.o
#
mv a.out stroud_prb
./stroud_prb > stroud_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running stroud_prb"
  exit
fi
rm stroud_prb
#
echo "Program output written to stroud_prb_output.txt"
