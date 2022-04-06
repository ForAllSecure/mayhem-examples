FROM fuzzers/cargo-fuzz:0.10.0
COPY src/mayhemit.rs .
RUN export USER=root && \
    cargo new mayhemit && \
    cd mayhemit && \
    cargo fuzz init && \
    cd fuzz && \
    sed -i 's/fuzz_target_1/mayhemit/g' Cargo.toml && \
    rm fuzz_targets/fuzz_target_1.rs && \
    cp /mayhemit.rs /mayhemit/fuzz/fuzz_targets && \
    cargo fuzz build

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit/fuzz/target/x86_64-unknown-linux-gnu/release/mayhemit"]
