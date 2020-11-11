#
# NircadaOS Dockerfile
#
# Allows building NircadaOS through Docker.
#
# Usage:
#
#    docker build -t nircada .
#    docker run -it -v $(pwd):/root nircada
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

ENV HOME /root
ENV DISTRO NircadaOS

VOLUME /root

WORKDIR /root

CMD make image
