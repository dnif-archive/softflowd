# softflowd
#
# VERSION               0.0.1

FROM ubuntu:14.04
MAINTAINER ssugar

RUN apt-get update
RUN apt-get install -y softflowd
RUN service softflowd stop

CMD ["/usr/sbin/softflowd", "-d", "-i", "eth0", "-n", "127.0.0.1:5555"]