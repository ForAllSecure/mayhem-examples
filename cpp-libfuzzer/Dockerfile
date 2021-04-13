FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -y clang libfuzzer-7-dev
COPY fuzzme.cpp .
RUN clang++ -g -fsanitize=fuzzer,address -fno-inline -o fuzzme fuzzme.cpp

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
