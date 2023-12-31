FROM         --platform=$TARGETOS/$TARGETARCH debian:latest

LABEL        author="Fleter" maintainer="fleter@fleter.my.id"
LABEL        org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL        org.opencontainers.image.licenses=MIT

ENV         DEBIAN_FRONTEND=noninteractive

RUN         apt update && apt upgrade -y \
            && apt -y --no-install-recommends install ca-certificates curl git unzip zip tar jq wget

# Only install the needed steamcmd packages on the AMD64 build
RUN         if [ "$(uname -m)" = "x86_64" ]; then \
              dpkg --add-architecture i386 && \
              apt update && \
              apt -y install lib32gcc-s1 libsdl2-2.0-0:i386; \
            fi