FROM ubuntu:16.04
MAINTAINER Sebastian Nemak <info@s7n.io>

ENV GIT_URL git://github.com/zcash/zcash.git
ENV ZCASH_VERSION v1.0.2
ENV PATH /root/zcash:/root/zcash/zcutil:/root/zcash/src:$PATH

# update
RUN apt-get autoclean && apt-get autoremove && \
    apt-get update && apt-get -y upgrade
# install dependencies
RUN apt-get -qqy install --no-install-recommends \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake
# clean up
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /root/

# prepare
RUN echo "check_certificate = off" > /root/.wgetrc

# checkout zcash
RUN git clone ${GIT_URL} zcash && cd zcash \
    git checkout tags/${ZCASH_VERSION}

WORKDIR /root/zcash/

# install zcash
RUN ./zcutil/fetch-params.sh
RUN ./zcutil/build.sh -j$(nproc)
