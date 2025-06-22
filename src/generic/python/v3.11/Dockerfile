FROM --platform=$TARGETOS/$TARGETARCH python:3.11-slim

LABEL author="Shadow-x78" maintainer="shadow.xox78@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    chromium \
    fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf \
    ffmpeg iproute2 git sqlite3 tzdata ca-certificates dnsutils build-essential \
    wget gnupg2 apt-utils net-tools xvfb pulseaudio apt-transport-https

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
