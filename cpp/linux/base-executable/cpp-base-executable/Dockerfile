FROM debian:bookworm-slim as builder
RUN apt-get update && \
    apt-get install -y gcc g++ make libc6-dbg && \
    rm -rf /var/lib/apt/lists/*
COPY src/mayhemit.cpp .
RUN g++ mayhemit.cpp -o mayhemit

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
