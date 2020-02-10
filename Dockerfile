FROM ubuntu:bionic

ARG DEBIAN_FRONTEND=noninteractive

ENV LC_ALL=C.UTF-8

RUN apt-get update
RUN apt-get install \
  ca-certificates \
  curl \
  jq \
  python3 \
  python3-pip \
  python3-setuptools \
  python3-wheel \
  unzip \
  wget \
  zip \
  --no-install-recommends -y

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

RUN wget --no-verbose --tries=5 --timeout=5 https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb \
  -O /tmp/session-manager-plugin.deb && \
  dpkg -i /tmp/session-manager-plugin.deb && \
  rm /tmp/session-manager-plugin.deb

WORKDIR /app

CMD [ "/bin/bash" ]
