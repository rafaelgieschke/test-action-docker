from ubuntu
run apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get -y install \
  build-essential \
  libfuse-dev libarchive-dev xfsprogs
workdir /src
copy linux /src
run make -C tools/lkl
#from scratch
#copy tools/lkl/ 
