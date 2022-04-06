FROM fuzzers/afl:2.52
RUN apt-get update && \
    apt-get install -y ocaml
COPY src/mayhemit.ml .
RUN ocamlopt -afl-instrument unix.cmxa mayhemit.ml -o /mayhemit && \
    mkdir /input && \
    echo seed > input/seed && \
    mkdir /output

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "input", "-o", "output"]
CMD ["/mayhemit", "@@"]