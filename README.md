# Template for some basic c++ programs, includes libhttpserver
### for libhttpserver (requiers microhttpd)
```sh scripts/download-libhttpserver```
then go to /libs/libhttpserver and type
```
./bootstrap
mkdir build
cd build
../configure
make
make install
```