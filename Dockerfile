from ubuntu
run apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install \
  build-essential bison flex bc python \
  libfuse-dev libarchive-dev xfsprogs
workdir /src
copy linux /src
run make -C tools/lkl

from ubuntu
copy --from=0 /src/tools/lkl/lklfuse /opt/
