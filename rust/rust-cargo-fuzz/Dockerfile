FROM rust:1.44-buster as rust-target
RUN cargo install cargo-fuzz && \
    rustup install nightly && \
    rustup default nightly
COPY fuzzme.rs .
RUN export USER=root && \
    cargo new fuzzme && \
    cd fuzzme && \
    cargo fuzz init && \
    cd fuzz && \
    sed -i 's/fuzz_target_1/fuzzme/g' Cargo.toml && \
    rm fuzz_targets/fuzz_target_1.rs && \
    cp /fuzzme.rs /fuzzme/fuzz/fuzz_targets && \
    cargo fuzz build

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme/fuzz/target/x86_64-unknown-linux-gnu/release/fuzzme", "@@"]
