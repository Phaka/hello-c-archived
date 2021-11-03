FROM ubuntu:20.04
LABEL maintainer="docker@phaka.org"
LABEL version="1.0"
LABEL description="This is custom Docker image to build software."
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update -y && \
    apt install -y build-essential && \
    apt clean && \
    mkdir -p /work 

VOLUME /work

CMD /bin/bash