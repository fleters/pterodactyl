FROM         --platform=$TARGETOS/$TARGETARCH ubuntu:latest

LABEL        author="Fleter" maintainer="fleter@fleter.my.id"
LABEL        org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL        org.opencontainers.image.licenses=MIT

ENV         DEBIAN_FRONTEND=noninteractive

RUN         apt update \
            && apt upgrade -y \
            && apt -y --no-install-recommends install ca-certificates curl git unzip zip tar jq