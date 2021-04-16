FROM fuzzers/honggfuzz:1.9
COPY fuzzme.c .
RUN hfuzz-clang -O1 -o fuzzme fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@