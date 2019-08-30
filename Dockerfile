from gcc as env

run apt-get update && apt-get upgrade -y && apt-get -y install \
  cpio \
  unzip \
  rsync \
  bc \
  libelf-dev \
  vim

workdir /root
copy buildroot buildroot
copy packages packages

workdir /root/buildroot

copy .config *.append ./
run FORCE_UNSAFE_CONFIGURE=1 make BR2_EXTERNAL="/root/packages" BR2_JLEVEL="$(nproc)" olddefconfig

from env
run FORCE_UNSAFE_CONFIGURE=1 make BR2_EXTERNAL="/root/packages" BR2_JLEVEL="$(nproc)"

run cp output/images/disk.img /opt/
