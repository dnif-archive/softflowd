# softflowd
#
# VERSION               0.0.1

FROM ubuntu:18.04
MAINTAINER ssugar

RUN apt-get update
RUN apt-get install -y --force-yes softflowd tcpdump net-tools iputils-ping
RUN service softflowd stop

ARG IFACE=eth0
ARG TIP=127.0.0.1
ARG TPORT=55555
# CMD ["tcpdump", "-i", "enp0s3", "-nnn"]
# CMD ["/usr/sbin/softflowd", "-d", "-i", "eth0", "-n", "127.0.0.1:5555"]
CMD ["sh", "-c", "/usr/sbin/softflowd -d -i $IFACE -n $TIP:$TPORT"]
