FROM lsiobase/alpine.python
MAINTAINER sparklyballs

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 5075
# WORKDIR /config/hydra
VOLUME /config /downloads
