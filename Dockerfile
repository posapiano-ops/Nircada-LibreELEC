#
# NircadaOS Dockerfile
#
# Allows building NircadaOS through Docker.
#
# Usage:
#
#    docker build -t nircada .
#    docker run --rm -it -v $(pwd):/home/ubuntu nircada
#
# Once inside the docker container, you can start building e.g,.
#
#   DISTRO=NircadaOS PROJECT=Generic ARCH=x86_64 make image
#   DISTRO=NircadaOS PROJECT=Generic ARCH=i386 make image
#	DISTRO=NircadaOS PROJECT=RPi DEVICE=RPi ARCH=arm make image
#   DISTRO=NircadaOS PROJECT=RPi DEVICE=RPi ARCH=arm make image 
#
# Bulding a single package:
#
#    PROJECT=OdroidXU3 ARCH=arm scripts/build ppsspp
#

FROM ubuntu:xenial

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		bash \
		bc \
		bsdmainutils \
		build-essential \
		bzip2 \
		diffutils \
		g++ \
		gawk \
		gcc \
		git-core \
		gperf \
		gzip \
		libjson-perl \
		libncurses5-dev \
		lzop \
		make \
		patch \
		patchutils \
		perl \
		sed \
		tar \
		texinfo \
		u-boot-tools \		
		unzip \
		wget \
		xfonts-utils \
		xsltproc \
		xz-utils \
		zip \
	&& rm -rf /var/lib/apt/lists/*

#ENV HOME /root
#ENV DISTRO NircadaOS
#VOLUME /root
#WORKDIR /root
#CMD make image
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-cloudimg-ubuntu
USER ubuntu
WORKDIR /home/ubuntu
ENV HOME /home/ubuntu
ENV DISTRO NircadaOS
VOLUME /home/ubuntu
CMD bash
