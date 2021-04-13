FROM fuzzers/afl-gcc:2.52
COPY fuzzme.c .
RUN afl-clang -O0 -g -fno-inline -o /fuzzme fuzzme.c
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
