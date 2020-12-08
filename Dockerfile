#
# NircadaOS Dockerfile Ubuntu Bionic 18.04
#
# Allows building NircadaOS through Docker.
#
# Usage:
#
#    docker build -t nircada .
#    docker run --rm -it -v $(pwd):/root nircada
#
# Once inside the docker container, you can start building e.g,.
#
#   DISTRO=NircadaOS PROJECT=Generic ARCH=x86_64 make image
#   DISTRO=NircadaOS PROJECT=Generic ARCH=i386 make image
#   DISTRO=NircadaOS PROJECT=RPi ARCH=arm make image
#   DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make image 
#
# Bulding a single package:
#   DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make image scripts/clean ppsspp
#   DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make image scripts/build ppsspp
#   DISTRO=NircadaOS PROJECT=RPi2 ARCH=arm make image scripts/install ppsspp
#

FROM ubuntu:bionic

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y \
		bash \
		bc \
        bison \
		bsdmainutils \
		build-essential \
		bzip2 \
		diffutils \
        flex \
		g++ \
		gawk \
		gcc \
		git-core \
		gperf \
		gzip \
		libavcodec-dev \
		libjson-perl \
		libffi-dev \
		libfreetype6-dev \
		libgbm-dev \
		libgdbm-dev \
		libegl1-mesa-dev \
		libgles2-mesa-dev \
		libgfortran-7-dev \
		libncurses5-dev \
		libnss3-dev \
        libmount-dev \
		libreadline-dev \
		libxkbcommon-dev \
		libsdl2-dev \
		libsdl-image1.2-dev \
		libssl-dev \
		libxml2-dev \
		lzop \
		make \
		mesa-common-dev \
		nvidia-cg-toolkit \
		nvidia-cg-dev \
		patch \
		patchutils \
		perl \
		python3 \
        python3-dev \
		sed \
        swig \
		tar \
		texinfo \
		u-boot-tools \		
		unzip \
		wget \
		xfonts-utils \
		xsltproc \
		xz-utils \
		yasm \
		zip \
		zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/*

ENV HOME /root
ENV DISTRO NircadaOS
VOLUME /root
WORKDIR /root
#CMD make image
CMD bash
