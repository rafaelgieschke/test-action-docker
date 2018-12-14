from ubuntu
run apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install \
  build-essential bison flex bc python \
  libfuse-dev libarchive-dev xfsprogs \
  git

workdir /src
copy . .

workdir linux
run git apply ../no-raid6.patch
run make -C tools/lkl

from ubuntu
run apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install fuse libarchive13 && apt-get clean
copy --from=0 /src/linux/tools/lkl/lklfuse /src/linux/tools/lkl/cptofs /src/linux/tools/lkl/fs2tar /opt/lkl/
env PATH="/opt/lkl:${PATH}"
