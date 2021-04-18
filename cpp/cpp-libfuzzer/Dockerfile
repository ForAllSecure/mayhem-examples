FROM fuzzers/libfuzzer:7.0
COPY fuzzme.cpp .
RUN clang++ -g -fsanitize=fuzzer,address -fno-inline -o fuzzme fuzzme.cpp

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme
