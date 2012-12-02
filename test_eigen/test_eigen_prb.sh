#!/bin/bash
#
gfortran -c -g test_eigen_prb.f >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling test_eigen_prb.f"
  exit
fi
rm compiler.txt
#
gfortran test_eigen_prb.o -L$HOME/libf77/$ARCH -ltest_eigen
if [ $? -ne 0 ]; then
  echo "Errors linking and loading test_eigen_prb.o"
  exit
fi
rm test_eigen_prb.o
#
mv a.out test_eigen_prb
./test_eigen_prb > test_eigen_prb_output.txt
if [ $? -ne 0 ]; then
  echo "Errors running test_eigen_prb"
  exit
fi
rm test_eigen_prb
#
echo "Test results written to test_eigen_prb_output.txt."
