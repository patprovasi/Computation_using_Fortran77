#!/bin/bash
#
gfortran -c -g fd1d_bvp_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling fd1d_bvp_prb.f"
  exit
fi
rm compiler.txt
#
gfortran fd1d_bvp_prb.o -L$HOME/libf77/$ARCH -lfd1d_bvp
if [ $? -ne 0 ]; then
  echo "Errors linking and loading fd1d_bvp_prb.o"
  exit
fi
rm fd1d_bvp_prb.o
#
mv a.out fd1d_bvp_prb
./fd1d_bvp_prb > fd1d_bvp_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running fd1d_bvp_prb"
  exit
fi
rm fd1d_bvp_prb
#
echo "Test results written to fd1d_bvp_prb_output.txt."
