#!/bin/sh

if test "$#" -eq 0; then set -- menuconfig; fi

SRC="$(cd -- "$(dirname -- "$0")"; pwd)"
cd ../buildroot

set -x
PERL_MM_OPT= make BR2_EXTERNAL="$SRC" "$@"
