FROM ubuntu:focal

COPY install-packages /usr/bin

### base ###
ARG DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize \
    && install-packages \
	git \
	cmake \
	ninja-build \
	gperf \
	ccache \
	dfu-util \
	device-tree-compiler \
	wget \
	python3-dev \
	python3-pip \
	python3-setuptools \
	python3-tk \
	python3-wheel \
	xz-utils \
	file \
	make \
	gcc \
	gcc-multilib \
	g++-multilib \
	libsdl2-dev \
        locales \
        sudo  \
    && locale-gen en_US.UTF-8

ENV LANG=en_US.UTF-8

RUN pip3 install west
