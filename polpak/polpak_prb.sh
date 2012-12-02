#!/bin/bash
#
gfortran -c -g polpak_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling polpak_prb.f"
  exit
fi
rm compiler.txt
#
gfortran polpak_prb.o -L$HOME/libf77/$ARCH -lpolpak
if [ $? -ne 0 ]; then
  echo "Errors linking and loading polpak_prb.o"
  exit
fi
rm polpak_prb.o
#
mv a.out polpak_prb
./polpak_prb > polpak_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running polpak_prb"
  exit
fi
rm polpak_prb
#
echo "Test results written to polpak_prb_output.txt."
