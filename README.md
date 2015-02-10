# Kernel Builder

Compiles the linux kernel inside a Debian Jessie Docker container.

I've extracted the commands from [this](https://blog.jessfraz.com/posts/linux-on-mac.html) great guide on running Jessie on a Macbook Pro. 

Usage:

    docker build -t kernel .

    docker run -v /tmp:/tmp kernel cp /usr/src/linux-image-3.19.0_3.19_amd64.deb /tmp
