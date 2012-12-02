#!/bin/bash
#
gfortran -c atest.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling atest.f"
  exit
fi
rm compiler.txt
#
gfortran -c message.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling message.f"
  exit
fi
rm compiler.txt
#
gfortran -c mgmpi_stubs.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling mgmpi_stubs.f"
  exit
fi
rm compiler.txt
#
gfortran -c mgvio_stubs.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling mgvio_stubs.f"
  exit
fi
rm compiler.txt
#
echo "Compile xgui_stubs.c"
gcc -c xgui_stubs.c >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling xgui_stubs.c"
  exit
fi
rm compiler.txt
#
gfortran atest.o message.o mgmpi_stubs.o mgvio_stubs.o xgui_stubs.o \
  -L$HOME/libf77/$ARCH -lpltmg_double -lrpcsvc
if [ $? -ne 0 ]; then
  echo "Errors linking and loading "
  echo "  atest.o + message.o + mgmpi_stubs.o + mgvio_stubs.o + xgui_stubs.o"
  exit
fi
rm atest.o
rm message.o
rm mgmpi_stubs.o
rm mgvio_stubs.o
rm xgui_stubs.o
#
mv a.out message
mv message $HOME/bin/$ARCH
#
echo "The pltmg message test program has been created."
