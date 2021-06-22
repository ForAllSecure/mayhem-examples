FROM fuzzers/libfuzzer:12.0
COPY src/fuzzme.cpp .
RUN clang++-12 -fsanitize=fuzzer,address -fno-inline fuzzme.cpp -o fuzzme 

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
