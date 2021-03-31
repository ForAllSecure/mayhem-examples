FROM golang:1.13.3-buster as go-target
RUN apt-get update && apt-get install -y clang
RUN go get -u github.com/dvyukov/go-fuzz/go-fuzz github.com/dvyukov/go-fuzz/go-fuzz-build
COPY src /build/uninstrumented
WORKDIR /build/uninstrumented
RUN make static
