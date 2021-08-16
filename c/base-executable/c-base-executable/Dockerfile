FROM debian:buster-slim as builder
RUN apt-get update && \
    apt-get install -y gcc make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY src/fuzzme.c .
RUN gcc fuzzme.c -o /fuzzme

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
