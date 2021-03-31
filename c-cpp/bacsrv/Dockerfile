FROM debian:stable-slim
MAINTAINER support@forallsecure.comu
RUN apt-get update && \
    apt-get install -y strace && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /mayhem
COPY bacsrv .
EXPOSE 47808/udp
CMD ["/mayhem/bacsrv"]
