FROM fuzzers/aflplusplus:3.12c
COPY src/mayhemit.c .
RUN afl-clang-fast -fno-inline -o /mayhemit mayhemit.c
RUN mkdir /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/mayhemit", "@@"]
