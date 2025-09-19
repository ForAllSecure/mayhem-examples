FROM debian:bookworm-slim as builder
RUN apt-get update && \
    apt-get install -y gcc make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY src/mayhemit.c .
RUN gcc mayhemit.c -o /mayhemit

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
