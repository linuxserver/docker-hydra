FROM lsiobase/alpine.python
MAINTAINER sparklyballs

# set python to use utf-8 rather than ascii, hopefully resolve special characters in movie names
ENV PYTHONIOENCODING="UTF-8"

#Adding Custom files
COPY root/ /

WORKDIR /config/hydra

# ports and volumes
EXPOSE 5075
VOLUME /config /downloads
