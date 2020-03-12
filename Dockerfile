FROM ubuntu:18.04
MAINTAINER "ian <ian@jumpingrivers.com>"

ENV PACKER_VERSION=1.3.4

RUN apt update \
 && apt install -y openssl ssh unzip ansible \
 && rm -rf /var/lib/apt/lists/*

ADD https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip ./

RUN unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /bin
RUN rm -f packer_${PACKER_VERSION}_linux_amd64.zip
