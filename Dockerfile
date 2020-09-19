FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
  sudo \
  wget \
  vim
WORKDIR /opt
RUN wget https://dl.google.com/go/go1.14.5.linux-amd64.tar.gz && \
  tar -C /usr/local -xzf go1.14.5.linux-amd64.tar.gz && \
  rm -f go1.14.5.linux-amd64.tar.gz
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
ENV PATH=$PATH:/usr/local/go/bin

