FROM golang:1.13.3-buster as go-target
COPY src/fuzzme.go .
RUN go build -o fuzzme -a fuzzme.go

# Set to fuzz!
ENTRYPOINT []
CMD /go/fuzzme @@
