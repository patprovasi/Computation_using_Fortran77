#!/bin/bash
#
mkdir temp
cd temp
~/binc/$ARCH/f77split ../cnf_io.f
#
for FILE in `ls -1 *.f`;
do
  gfortran -c -g $FILE >& compiler.txt
  if [ $? -ne 0 ]; then
    echo "Errors compiling " $FILE
    exit
  fi
  rm compiler.txt
done
rm *.f
#
ar qc libcnf_io.a *.o
rm *.o
#
mv libcnf_io.a ~/libf77/$ARCH
cd ..
rmdir temp
#
echo "Library installed as ~/libf77/$ARCH/libcnf_io.a."
