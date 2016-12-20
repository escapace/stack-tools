<p align="right">
    <a href="https://travis-ci.org/epiloque/docker-base">
        <img src="https://img.shields.io/travis/epiloque/docker-base.svg?branch=master"
             alt="build status">
    </a>
</p>


# [docker-base](https://github.com/epiloque/docker-base)

This folder contains some scripts used to build and release a root filesystem
to include in base images. The contents of this can be fetched and merged into
a container build in order to provide useful utilities:

* [dumb-init](https://github.com/Yelp/dumb-init), which makes it easy to
  configure child process reaping and gives us signal forwarding to all
  processes running under it
* [gosu](https://github.com/tianon/gosu), which makes it less of a pain to
  switch to other users without introducing a `su` or `sudo` intermediate
  process

Containers should tailor what they include depending on what they need.

## [Building](https://github.com/epiloque/docker-base#Building)

Docker is required for building since compiling steps happen in containers.

```sh

$ ./manage

  Usage: manage [ script ] [ arguments ... ]

             help   Display this help and exit
  build-dumb-init   Build dumb-init
       build-gosu   Build gosu
```

## [License](https://github.com/epiloque/docker-base#License)

Released under the terms of the BSD-3-Clause license.
