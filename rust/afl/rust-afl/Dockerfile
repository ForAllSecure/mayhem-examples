FROM fuzzers/cargo-fuzz:0.10.0
RUN cargo install afl --version 0.7.0
COPY src/fuzzme.rs .
RUN export USER=root && \
    cargo new fuzzme && \
    cd fuzzme && \
    mv /fuzzme.rs src/main.rs && \
    echo afl = '"0.4"' >> Cargo.toml && \
    cargo afl build
RUN echo seed > /tmp/seed

# Set to fuzz!
ENTRYPOINT ["cargo", "afl", "fuzz", "-i", "/tmp", "-o", "/out"]
CMD ["/fuzzme/target/debug/fuzzme"]
