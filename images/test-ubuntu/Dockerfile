# @tag 16.04
# @tag xenial

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y sudo \
    python \
    ca-certificates \
    python-pip \
    python-openssl \
    python-urllib3 \
    python-pyasn1 \
    git

RUN sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
