FROM fuzzers/libfuzzer:12.0
COPY src/fuzzme.c .
RUN clang-12 -fsanitize=fuzzer,address -fno-inline fuzzme.c -o fuzzme 

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
