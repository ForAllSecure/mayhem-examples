FROM fuzzers/aflplusplus:3.12c
COPY fuzzme.c .
RUN afl-clang-fast -O0 -g -o /fuzzme fuzzme.c
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
