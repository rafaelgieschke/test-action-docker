#!/bin/sh

SRC="$(cd -- "$(dirname -- "$0")"; pwd)"
cd ../buildroot
make BR2_EXTERNAL="$SRC" menuconfig
