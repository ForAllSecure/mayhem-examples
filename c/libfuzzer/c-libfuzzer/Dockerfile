FROM fuzzers/libfuzzer:12.0
COPY src/mayhemit.c .
RUN clang-12 -fsanitize=fuzzer,address -fno-inline mayhemit.c -o mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit"]
