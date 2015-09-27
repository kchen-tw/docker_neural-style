FROM kaixhin/torch:latest
MAINTAINER kChen "kchen.ntu@gmail.com"

RUN apt-get update
RUN apt-get install -y wget libpng-dev libprotobuf-dev protobuf-compiler
RUN /root/torch/install/bin/luarocks install loadcaffe

WORKDIR /root
RUN git clone --depth 1 https://github.com/jcjohnson/neural-style.git
WORKDIR /root/neural-style
RUN sh models/download_models.sh

