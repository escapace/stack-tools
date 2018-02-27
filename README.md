# [stack-tools](https://github.com/escapace/stack-tools)

Collection of manage modules shared by projects across the escapace stack.

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
