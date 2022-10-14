FROM fuzzers/cargo-fuzz:0.11.0
RUN cargo install afl --version 0.7.0
COPY src/mayhemit.rs .
RUN export USER=root && \
    cargo new mayhemit && \
    cd mayhemit && \
    mv /mayhemit.rs src/main.rs && \
    echo afl = '"0.4"' >> Cargo.toml && \
    cargo afl build
RUN echo seed > /tmp/seed

# Set to fuzz!
ENTRYPOINT ["cargo", "afl", "fuzz", "-i", "/tmp", "-o", "/out"]
CMD ["/mayhemit/target/debug/mayhemit"]
