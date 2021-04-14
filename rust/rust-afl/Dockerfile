FROM rust:1.44-buster as rust-target
RUN cargo install afl
COPY fuzzme.rs .
RUN export USER=root && \
    cargo new fuzzme && \
    cd fuzzme && \
    mv /fuzzme.rs src/main.rs && \
    cargo afl build

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme/target/debug/fuzzme", "@@"]
