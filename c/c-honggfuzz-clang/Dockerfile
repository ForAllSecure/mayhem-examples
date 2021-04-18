FROM fuzzers/honggfuzz:1.9
COPY fuzzme.c .
RUN hfuzz-clang -O0 -g -fno-inline -o fuzzme fuzzme.c && \
    echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/corpus", "--"]
CMD ["/fuzzme"]