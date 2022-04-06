FROM fuzzers/go-fuzz:1.2.0
COPY src/mayhemit.go .
RUN go-fuzz-build -libfuzzer -o mayhemit.a && \
    clang -fsanitize=fuzzer mayhemit.a -o mayhemit.libfuzzer

# Set to fuzz!
ENTRYPOINT []
CMD ["/go/mayhemit.libfuzzer"]
