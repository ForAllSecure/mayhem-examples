FROM golang:1.13.3-buster as go-target
RUN go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build && \
    apt-get update && \
    apt-get install -y clang
COPY fuzzme.go .
RUN go-fuzz-build -libfuzzer -o fuzzme.a && \
    clang -fsanitize=fuzzer fuzzme.a -o fuzzme.libfuzzer

# Set to fuzz!
ENTRYPOINT []
CMD /go/fuzzme.libfuzzer @@
