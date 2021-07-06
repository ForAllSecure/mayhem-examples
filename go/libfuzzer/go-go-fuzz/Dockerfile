FROM fuzzers/go-fuzz:1.2.0
COPY src/fuzzme.go .
RUN go-fuzz-build -libfuzzer -o fuzzme.a && \
    clang -fsanitize=fuzzer fuzzme.a -o fuzzme.libfuzzer

# Set to fuzz!
ENTRYPOINT []
CMD ["/go/fuzzme.libfuzzer"]
