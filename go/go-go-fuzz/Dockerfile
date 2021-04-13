FROM golang:1.13.3-buster as go-target
RUN go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build
COPY fuzzme.go .
RUN go-fuzz-build -o fuzzme .

# Set to fuzz!
ENTRYPOINT []
CMD /go/fuzzme @@
