# @tag latest
# @tag 7

FROM centos/systemd

RUN yum -y update && \
    yum -y install sudo \
    yum clean all

RUN sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
CMD "/bin/sh"
