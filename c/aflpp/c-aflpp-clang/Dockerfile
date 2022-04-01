FROM fuzzers/aflplusplus:3.12c
COPY src/fuzzme.c .
RUN afl-clang-fast -fno-inline -o /fuzzme fuzzme.c
RUN mkdir /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/fuzzme", "@@"]
