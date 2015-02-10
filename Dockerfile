FROM debian:jessie
RUN apt-get update
RUN apt-get install -y curl kernel-package fakeroot

WORKDIR /usr/src
RUN curl -s https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.19.tar.xz | tar xJ

WORKDIR /usr/src/linux-3.19
ADD debian.config .config
RUN make-kpkg clean
RUN fakeroot make-kpkg --initrd --revision=3.19 kernel_image
VOLUME /usr/src
