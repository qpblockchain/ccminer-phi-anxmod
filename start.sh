#!/bin/bash
# Copyright 2018 qpool
#
# Use this startup script to automatically mine the most profitable coin in zpool under Linux


# select GPUs
GPUS='0,1,2,3'

while :
do
    ./ccminer -r 0 -a quark --url  stratum+tcp://mine.zpool.ca:4033   -u 1AojQ8Vge8nnnZpupRBRinuWCUwirwm21x -p quark,skein,lyra2v2,nist5 --show-diff -d ${GPUS}
    ./ccminer -r 0 -a skein --url  stratum+tcp://mine.zpool.ca:4933   -u 1AojQ8Vge8nnnZpupRBRinuWCUwirwm21x -p quark,skein,lyra2v2,nist5 --show-diff -d ${GPUS} -i 28,26
    ./ccminer -r 0 -a lyra2v2 --url  stratum+tcp://mine.zpool.ca:4533 -u 1AojQ8Vge8nnnZpupRBRinuWCUwirwm21x -p quark,skein,lyra2v2,nist5 --show-diff -d ${GPUS} -i 21
    ./ccminer -r 0 -a nist5 --url  stratum+tcp://mine.zpool.ca:3833   -u 1AojQ8Vge8nnnZpupRBRinuWCUwirwm21x -p quark,skein,lyra2v2,nist5 --show-diff -d ${GPUS} -i 21,19
    sleep 3
done
