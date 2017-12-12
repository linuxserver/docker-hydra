FROM lsiobase/alpine.python:3.7

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="sparklyballs"

# set python to use utf-8 rather than ascii
ENV PYTHONIOENCODING="UTF-8"

RUN \
 echo "**** install app ****" && \
 git clone --depth 1 https://github.com/theotherp/nzbhydra /app/hydra

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 5075
# WORKDIR /config/hydra
VOLUME /config /downloads
