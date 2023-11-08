FROM ubuntu:22.04 as build

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        binutils-mips-linux-gnu \
        build-essential \
        libaudiofile-dev \
        libcapstone-dev \
        git \
        pkg-config \
        python3 \
	wget \
        zlib1g-dev

RUN mkdir /mk64
WORKDIR /mk64

CMD echo 'Usage: docker run -it --rm -v ${PWD}:/mk64 mk64 make\n'\
         'See https://github.com/n64decomp/mk64/blob/master/README.md for more information'
