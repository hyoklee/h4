#!/bin/bash
echo $CFLAGS
echo $LDFLAGS
export CFLAGS += -I/usr/include/tirpc/
export LDFLAGS += -ltirpc
echo $CFLAGS
echo $LDFLAGS
autoreconf -fvi
./configure --disable-fortran --disable-netcdf 
make
make test
