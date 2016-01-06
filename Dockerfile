FROM linuxserver/baseimage.python

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

# Adding Custom files
ADD init/ /etc/my_init.d/
ADD services/ /etc/service/
RUN chmod -v +x /etc/service/*/run /etc/my_init.d/*.sh

# Volumes and Ports
WORKDIR /config/hydra
VOLUME /config /downloads
EXPOSE 5075
