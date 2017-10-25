<p align="right">
    <a href="https://travis-ci.org/escapace/stack-tools">
        <img src="https://img.shields.io/travis/escapace/stack-tools.svg?branch=master"
             alt="build status">
    </a>
</p>


# [stack-tools](https://github.com/escapace/stack-tools)

```sh

$ ./manage

  Usage: manage [ script ] [ arguments ... ]

  build-dumb-init    Build dumb-init minimal init system for linux containers
  build-gosu         Build gosu (go-based setuid+setgid+setgroups+exec)
  help               Display this help and exit
  release            Release docker tools
  test               Run the test suite

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
