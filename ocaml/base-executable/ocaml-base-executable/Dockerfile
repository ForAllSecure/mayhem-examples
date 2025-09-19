FROM debian:bookworm-slim as builder
RUN apt-get update && \
    apt-get install -y ocaml
COPY src/mayhemit.ml .
RUN ocamlopt mayhemit.ml -o /mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
