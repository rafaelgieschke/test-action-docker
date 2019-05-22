#!/bin/sh

SRC="$(pwd)"
cd ../buildroot
make BR2_EXTERNAL="$SRC" menuconfig
