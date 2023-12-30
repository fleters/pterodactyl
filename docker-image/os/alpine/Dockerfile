FROM         --platform=$TARGETOS/$TARGETARCH alpine:latest

LABEL        author="Fleter" maintainer="fleter@fleter.my.id"
LABEL        org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL        org.opencontainers.image.licenses=MIT

RUN          apk add --update --no-cache ca-certificates tzdata curl unzip tar git jq wget \
              && adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]


