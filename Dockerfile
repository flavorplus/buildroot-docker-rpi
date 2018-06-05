FROM debian:9

WORKDIR /root

# Install dependencies.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive\
    apt-get install -y build-essential libncurses5-dev rsync cpio python unzip bc wget git

# Install Buildroot.
RUN wget -nv https://git.busybox.net/buildroot/snapshot/buildroot-2018.02.2.tar.gz &&\
    tar xf buildroot-*.tar* &&\
    rm buildroot-*.tar* &&\
    ln -s buildroot-* buildroot

RUN mkdir -v tree/
COPY ./* tree/

WORKDIR /root/tree/output/

#RUN make O=$PWD -C /root/buildroot raspberrypi3_64_defconfig
