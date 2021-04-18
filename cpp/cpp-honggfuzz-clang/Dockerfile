FROM fuzzers/honggfuzz:1.9
COPY fuzzme.cpp .
RUN hfuzz-clang++ -O0 -g -fno-inline -o fuzzme fuzzme.cpp

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/corpus", "--"]
CMD ["/fuzzme"]