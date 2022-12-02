#!/bin/bash
echo $CFLAGS
echo $LDFLAGS
export CFLAGS+=" -I/usr/include/tirpc/"
export LDFLAGS+=" -ltirpc -lxdr"
echo $CFLAGS
echo $LDFLAGS
autoreconf -fvi
./configure --disable-fortran --disable-netcdf
cat ./config.log
make
make test
