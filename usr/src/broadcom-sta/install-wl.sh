#!/bin/bash

srcdir=`dirname $0`
rmmod wl
make -C $srcdir 
cp $srcdir/wl.ko /lib/modules/`uname -r`/kernel/net/wireless/
make -C $srcdir clean
depmod 
modprobe wl 

