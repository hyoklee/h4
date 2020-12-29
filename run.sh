./configure --prefix=/opt/hdfeos --with-jpeg=/opt/hdfeos --disable-netcdf --disable-fortran
make -j 4
make check
make install

