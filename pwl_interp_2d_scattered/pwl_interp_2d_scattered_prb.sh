#!/bin/bash
#
gfortran -c -g pwl_interp_2d_scattered_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling pwl_interp_2d_scattered_prb.f"
  exit
fi
rm compiler.txt
#
gfortran pwl_interp_2d_scattered_prb.o -L$HOME/libf77/$ARCH \
  -lpwl_interp_2d_scattered -ltest_interp_2d -lr8lib
if [ $? -ne 0 ]; then
  echo "Errors linking and loading pwl_interp_2d_scattered_prb.o"
  exit
fi
rm pwl_interp_2d_scattered_prb.o
#
mv a.out pwl_interp_2d_scattered_prb
./pwl_interp_2d_scattered_prb > pwl_interp_2d_scattered_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running pwl_interp_2d_scattered_prb"
  exit
fi
rm pwl_interp_2d_scattered_prb
#
echo "Test program output written to pwl_interp_2d_scattered_prb_output.txt."
