FROM        --platform=$TARGETOS/$TARGETARCH mariadb:latest
LABEL       author="Fleter" maintainer="fleter@fleter.my.id"
ENV         DEBIAN_FRONTEND noninteractive
RUN         apt update -y && apt install -y netcat && useradd -d /home/container -m container -s /bin/bash
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ../entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]