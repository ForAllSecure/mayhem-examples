FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y gcc-powerpc64le-linux-gnu make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY src/fuzzme.c .
RUN powerpc64le-linux-gnu-gcc -o fuzzme -Wno-div-by-zero -fno-stack-protector -zexecstack -no-pie fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
