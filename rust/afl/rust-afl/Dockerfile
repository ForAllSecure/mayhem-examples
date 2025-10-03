FROM rust:1.90.0
RUN cargo install cargo-afl
COPY src/mayhemit.rs .
RUN export USER=root && \
    cargo new mayhemit && \
    cd mayhemit && \
    mv /mayhemit.rs src/main.rs && \
    echo afl = '"*"' >> Cargo.toml && \
    cargo afl build
RUN echo seed > /tmp/seed

# Set to fuzz!
ENTRYPOINT ["cargo", "afl", "fuzz", "-i", "/tmp", "-o", "/out"]
CMD ["/mayhemit/target/debug/mayhemit"]