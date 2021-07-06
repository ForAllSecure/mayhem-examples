FROM rust:1.44-buster as rust-target
COPY src/fuzzme.rs .
RUN rustc -o /fuzzme fuzzme.rs

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme", "@@"]
