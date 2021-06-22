FROM fuzzers/afl:2.52
RUN apt-get update && \
    apt-get install -y ocaml
COPY src/fuzzme.ml .
RUN ocamlopt -afl-instrument fuzzme.ml -o /fuzzme && \
    mkdir /input && \
    echo seed > input/seed && \
    mkdir /output

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "input", "-o", "output"]
CMD ["/fuzzme"]
