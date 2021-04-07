FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y afl make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY fuzzme.c .
RUN afl-gcc -o fuzzme -g -Wno-div-by-zero -fno-stack-protector -zexecstack -no-pie fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
