#!/bin/bash
#
gfortran -c -g ziggurat_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling ziggurat_prb.f"
  exit
fi
rm compiler.txt
#
gfortran ziggurat_prb.o -L$HOME/libf77/$ARCH -lziggurat
if [ $? -ne 0 ]; then
  echo "Errors linking and loading ziggurat_prb.o"
  exit
fi
rm ziggurat_prb.o
#
mv a.out ziggurat_prb
./ziggurat_prb > ziggurat_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running ziggurat_prb"
  exit
fi
rm ziggurat_prb
#
echo "Test results written to ziggurat_prb_output.txt."
