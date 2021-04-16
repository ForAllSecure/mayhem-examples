FROM fuzzers/go-fuzz:1.2.0
COPY fuzzme.go .
RUN go build -ldflags "-linkmode external -extldflags -static" -tags="netgo osusergo" -o fuzzme -a fuzzme.go

# Set to fuzz!
ENTRYPOINT []
CMD /go/fuzzme @@
