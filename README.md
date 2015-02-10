Kernel Builder

Compiles the linux kernel inside a Debian:Jessie Docker container using a given configuration.

Usage:

docker build -t kernel .

docker run -v /tmp:/tmp kernel cp /usr/src/linux-image-3.19.0_3.19_amd64.deb /tmp
