FROM fuzzers/libfuzzer:7.0
COPY fuzzme.c .
RUN clang -g -fsanitize=fuzzer,address -o fuzzme -fno-stack-protector -no-pie fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
