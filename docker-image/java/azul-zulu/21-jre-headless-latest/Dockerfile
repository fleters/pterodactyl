FROM        --platform=$TARGETOS/$TARGETARCH azul/zulu-openjdk-debian:21-jre-headless-latest

LABEL       author="Fleter" maintainer="fleter@fleter.my.id"

LABEL       org.opencontainers.image.source="https://github.com/fleters/pterodactyl/tree/main/docker-image"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apt-get update -y \
            && apt-get install -y lsof curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 \
            && useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

CMD         [ "/bin/curl", "-s https://github.com/fleters/pterodactyl/raw/main/docker-image/java/azul-zulu/entrypoint.sh" ]