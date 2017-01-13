<p align="right">
    <a href="https://travis-ci.org/epiloque/docker-base">
        <img src="https://img.shields.io/travis/epiloque/docker-base.svg?branch=master"
             alt="build status">
    </a>
</p>


# [docker-base](https://github.com/epiloque/docker-base)

```sh

$ ./manage

  Usage: manage [ script ] [ arguments ... ]

             help   Display this help and exit
     build-centos   Build centos docker image
  build-dumb-init   build dumb-init binary
       build-gosu   build gosu binary

```

Sscripts used to build and release a root filesystem to include in base images.
The contents of this can be fetched and merged into a container build in order
to provide useful utilities:

* [dumb-init](https://github.com/Yelp/dumb-init), which makes it easy to
  configure child process reaping and gives us signal forwarding to all
  processes running under it
* [gosu](https://github.com/tianon/gosu), which makes it less of a pain to
  switch to other users without introducing a `su` or `sudo` intermediate
  process

Docker is required for building since compiling steps happen in containers.
Containers should tailor what they include depending on what they need.

## [CentOS](https://github.com/epiloque/docker-base#Qemu)

This repository contains the kickstart files needed to build a CentOS Docker
container from scratch. The following packages and dependencies are needed:

```sh
sudo yum install lorax virt-install libguestfs-tools-c
```

```sh
sudo yum install libfdt-devel ccache tar git make gcc g++ zlib-devel \
                 glib2-devel SDL-devel pixman-devel lzo-devel \
                 libaio-devel libcap-devel libiscsi-devel libcap-ng-devel

git clone git://git.qemu.org/qemu.git
cd qemu
./configure --enable-kvm --enable-lzo --enable-bzip2 \
            --enable-libiscsi --enable-cap-ng --enable-sdl \
            --enable-pie --enable-linux-aio \
            --target-list=aarch64-softmmu,arm-softmmu,i386-softmmu,x86_64-softmmu
make
sudo make install
```

## [License](https://github.com/epiloque/docker-base#License)

Released under the terms of the BSD-3-Clause license.
