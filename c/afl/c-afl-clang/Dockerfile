FROM fuzzers/afl:2.52
COPY src/mayhemit.c .
RUN afl-clang -fno-inline mayhemit.c -o /mayhemit
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]
CMD ["/mayhemit", "@@"]
