FROM ubuntu:14.04
MAINTAINER kChen "kchen.ntu@gmail.com"

RUN apt-get update
RUN apt-get install -y curl wget

# Install torch7
WORKDIR /root
RUN curl -s https://raw.githubusercontent.com/torch/ezinstall/master/install-deps | bash
RUN git clone https://github.com/torch/distro.git ~/torch --recursive
WORKDIR /root/torch
RUN /root/torch/install.sh
RUN /bin/bash -c source ~/.bashrc

# Install loadcaffe
RUN apt-get install -y libprotobuf-dev protobuf-compiler
RUN /root/torch/install/bin/luarocks install loadcaffe

# Install neural-style
RUN git clone --depth 1 https://github.com/jcjohnson/neural-style.git
WORKDIR /root/neural-style
RUN sh models/download_models.sh

