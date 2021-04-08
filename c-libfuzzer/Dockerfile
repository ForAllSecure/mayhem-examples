FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y clang libfuzzer-7-dev
COPY fuzzme.c .
RUN clang -g -fsanitize=fuzzer,address -o fuzzme -fno-stack-protector -no-pie fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
