FROM fuzzers/honggfuzz:1.9
COPY fuzzme.cpp .
RUN hfuzz-g++ -O1 -o fuzzme fuzzme.cpp

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/corpus", "--"]
CMD ["/fuzzme", "___FILE___"]