FROM rust:1.44-buster as rust-target
RUN cargo install cargo-fuzz && cargo install afl --version 0.7.0
COPY src /build/uninstrumented
WORKDIR /build/uninstrumented
RUN make uninstrumented