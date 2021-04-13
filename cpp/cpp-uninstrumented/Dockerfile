FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y gcc g++ make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY fuzzme.cpp .
RUN g++ -Wno-div-by-zero -fno-stack-protector -zexecstack -no-pie -o fuzzme fuzzme.cpp

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
