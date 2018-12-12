from phusion/baseimage:0.11

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes \
build-essential \
debhelper \
       dh-autoreconf\
       dpkg-dev \
       nasm \
       libx11-dev \
       libxext-dev \
       libxt-dev \
       libxv-dev \
       x11proto-core-dev \
       libaudiofile-dev \
       libpulse-dev \
       libgl1-mesa-dev \ 
       libasound2-dev \
       libcaca-dev \
       libglu1-mesa-dev \
       libxkbcommon-dev 

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes \
debhelper \
dh-autoreconf \
autotools-dev \
libcairo-dev \
libcunit1-dev \
libfreerdp-dev \
libvorbis-dev \
libvncserver-dev \
libpulse-dev \
libossp-uuid-dev \
libpango1.0-dev

copy guacamole-server-eaas /guacamole-server-eaas
workdir /guacamole-server-eaas

run autoreconf -i 
run ./configure --without-pulse --without-rdp --enable-pipeaudio --disable-ssh-agent --without-vnc
run make install

copy libsdl-eaas /libsdl-eaas
WORKDIR /libsdl-eaas
run ./autogen.sh
run ./configure --enable-static=no --disable-rpath --enable-sdl-dlopen --disable-loadso \
            --disable-video-ggi --disable-video-svga --disable-video-aalib \
            --disable-nas --disable-esd --disable-arts \
            --disable-alsa-shared --disable-pulseaudio-shared \
            --disable-x11-shared \
            --enable-video-caca \
            --enable-video-sdlonp --enable-nasm

run make install

workdir /

run rm -rf guacamole-server-eaas
run rm -rf libsdl-eaas

copy emucon-init /usr/bin/
copy emucon-starter /usr/bin/

run apt-get clean

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes \
build-essential \
libpixman-1-dev \
libpulse-dev \
vde2 \
libvde-dev libvdeplug-dev libvdeplug2 libvde0 python bison flex

workdir /qemu
run curl "https://download.qemu.org/qemu-3.1.0.tar.xz" | tar xJ --strip-components=1
run ./configure --with-sdlabi=1.2 --prefix=/usr --audio-drv-list=sdl,pa --enable-sdl --enable-vde \
--target-list=i386-softmmu,x86_64-softmmu,ppc-softmmu,ppc64-softmmu
run make install 

workdir /
run rm -rf /qemu
run apt-get clean
