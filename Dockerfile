from registry.gitlab.com/emulation-as-a-service/emulators/emulators-base

LABEL "EAAS_EMULATOR_TYPE"="qemu-system"
LABEL "EAAS_EMULATOR_VERSION"="v3.1"

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

add metadata /metadata
