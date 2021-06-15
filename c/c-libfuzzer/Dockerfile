FROM fuzzers/libfuzzer:12.0
COPY fuzzme.c .
RUN clang-12 -g -fsanitize=fuzzer,address -o fuzzme -fno-stack-protector -no-pie fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
