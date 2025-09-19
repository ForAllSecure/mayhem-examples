FROM fuzzers/libfuzzer:12.0
COPY src/mayhemit.cpp .
RUN clang++-12 -fsanitize=fuzzer,address -fno-inline mayhemit.cpp -o mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit"]
