FROM rust:1.44-buster as rust-target
COPY src/mayhemit.rs .
RUN rustc -o /mayhemit mayhemit.rs

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
