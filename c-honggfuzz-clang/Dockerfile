FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y make curl build-essential binutils-dev libunwind-dev clang && \
    curl -L -o honggfuzz-1.9.tgz https://github.com/google/honggfuzz/archive/1.9.tar.gz && \
    tar zxf honggfuzz-1.9.tgz && \
    cd honggfuzz-1.9 && \
    make && \
    make install
COPY fuzzme.c .
RUN hfuzz-clang -O1 -o fuzzme fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@