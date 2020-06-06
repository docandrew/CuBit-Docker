# Dockerfile for CuBit build environment

FROM alire/gnat:community-2020

ENV PATH=/opt/gnat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get update && \
    apt-get install -y \
        yasm \
        libncurses5 \
        xorriso \
        grub-pc-bin \
        grub-common && \
    apt-get clean
