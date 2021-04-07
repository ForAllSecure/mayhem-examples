FROM golang:1.13.3-buster as go-target
RUN go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build
COPY fuzzme.go .
RUN go build -ldflags "-linkmode external -extldflags -static" -tags="netgo osusergo" -o fuzzme -a fuzzme.go

# Set to fuzz!
ENTRYPOINT []
CMD /go/fuzzme @@
