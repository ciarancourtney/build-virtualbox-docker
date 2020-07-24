FROM ubuntu:18.04
# Based on outdated https://www.virtualbox.org/wiki/Linux%20build%20instructions

ARG VIRTUALBOX_VER=6.1.8
COPY apt-pkgs.txt .
RUN apt-get update && apt-get -yqq upgrade && apt-get -yqq install wget
RUN sed 's/#.*//' apt-pkgs.txt | xargs apt-get -yqq -- install

RUN wget --quiet https://download.virtualbox.org/virtualbox/$VIRTUALBOX_VER/VirtualBox-$VIRTUALBOX_VER.tar.bz2 && \
  tar -xf VirtualBox-$VIRTUALBOX_VER.tar.bz2 && \
  mv VirtualBox-$VIRTUALBOX_VER VirtualBox

WORKDIR /VirtualBox
RUN ./configure \
  --disable-java \
  --disable-qt \
  --disable-opengl \
  --disable-docs \
  --disable-libvpx \
  --disable-libopus \
  --disable-hardening \
  --disable-pulse \
  --disable-alsa \
  --build-headless
RUN . ./env.sh && kmk
