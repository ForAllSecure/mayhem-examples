FROM fuzzers/libfuzzer:12.0
COPY fuzzme.c .
RUN clang-12 -fsanitize=fuzzer,address fuzzme.c -o fuzzme 

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
