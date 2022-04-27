FROM golang:1.13.3-buster as go-target
COPY src/mayhemit.go .
RUN go build -o mayhemit -a mayhemit.go

# Set to fuzz!
ENTRYPOINT []
CMD /go/mayhemit @@
