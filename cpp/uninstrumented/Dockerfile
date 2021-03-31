FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y gcc make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /mayhem
COPY src testme
RUN cd testme && make
