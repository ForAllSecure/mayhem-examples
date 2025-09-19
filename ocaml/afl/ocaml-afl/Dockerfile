FROM ubuntu AS base
RUN apt update -y && apt install -y curl afl++ unzip
RUN curl -fsSL https://opam.ocaml.org/install.sh | bash
RUN opam init --disable-sandboxing -y
COPY src/mayhemit.ml .
RUN eval $(opam env) && ocamlopt -afl-instrument unix.cmxa mayhemit.ml -o /mayhemit && \
    mkdir /input && \
    echo seed > input/seed && \
    mkdir /output

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "input", "-o", "output"]
CMD ["/mayhemit", "@@"]