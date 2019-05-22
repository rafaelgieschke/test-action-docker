#!/bin/sh
set -eu

cp -f "$HOST_DIR/lib/grub/i386-pc/boot.img" "$BINARIES_DIR"

cat > "$TARGET_DIR/boot/grub/grub.cfg" << EOF
linux /boot/bzImage root=/dev/sda1 rootwait console=tty1
boot
EOF
