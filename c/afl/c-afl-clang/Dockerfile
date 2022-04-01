FROM fuzzers/afl:2.52
COPY src/fuzzme.c .
RUN afl-clang -fno-inline fuzzme.c -o /fuzzme
RUN mkdir -p /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/fuzzme", "@@"]
