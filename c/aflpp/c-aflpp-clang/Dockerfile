FROM fuzzers/aflplusplus:3.12c
COPY src/fuzzme.c .
RUN afl-clang-fast -fno-inline -o /fuzzme fuzzme.c
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
