FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y gcc g++ make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY src/fuzzme.cpp .
RUN g++ fuzzme.cpp -o fuzzme

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
