#!/bin/bash

# Copyright 2018 qpool
# script to create the Makefile and build

export PATH="$PATH:/usr/local/cuda/bin/"
export LD_LIBRARY_PATH="/usr/local/cuda/lib"

make distclean || echo clean

rm -f Makefile.in
rm -f config.status
./autogen.sh || echo done

# some GNU cc Linux optimization
extracflags="-march=native -D_REENTRANT -falign-functions=16 -falign-jumps=16 -falign-labels=16"
CUDA_CFLAGS="-O3 -lineno -Xcompiler -Wall -D_FORCE_INLINES -Wno-deprecated-declarations" ./configure CXXFLAGS="-O3 $extracflags"

make -j $(nproc)

#strip ./ccminer
