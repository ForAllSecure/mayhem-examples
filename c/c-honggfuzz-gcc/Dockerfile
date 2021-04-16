FROM fuzzers/honggfuzz:1.9
COPY fuzzme.c .
RUN hfuzz-gcc -O1 -o fuzzme fuzzme.c

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/corpus", "--"]
CMD ["/fuzzme", "___FILE___"]