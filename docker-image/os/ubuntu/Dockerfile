FROM         --platform=$TARGETOS/$TARGETARCH ubuntu:latest

LABEL        author="Fleter" maintainer="fleter@fleter.my.id"
LABEL        org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL        org.opencontainers.image.licenses=MIT

ENV          DEBIAN_FRONTEND noninteractive
RUN          useradd -m -d /home/container -s /bin/bash container
RUN          ln -s /home/container/ /nonexistent
ENV          USER=container HOME=/home/container

RUN          apt update && apt upgrade -y
RUN          apt install -y curl lsof ca-certificates openssl git tar sqlite3 fontconfig tzdata iproute2 libfreetype6 tini gcc g++ ca-certificates dnsutils ffmpeg procps

WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]