#!/bin/bash
#
gfortran -c -g lagrange_interp_nd_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling lagrange_interp_nd_prb.f"
  exit
fi
rm compiler.txt
#
gfortran lagrange_interp_nd_prb.o -L$HOME/libf77/$ARCH -llagrange_interp_nd
if [ $? -ne 0 ]; then
  echo "Errors linking and loading lagrange_interp_nd_prb.o"
  exit
fi
rm lagrange_interp_nd_prb.o
#
mv a.out lagrange_interp_nd_prb
./lagrange_interp_nd_prb > lagrange_interp_nd_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running lagrange_interp_nd_prb"
  exit
fi
rm lagrange_interp_nd_prb
#
echo "Test program output written to lagrange_interp_nd_prb_output.txt."
