FROM fuzzers/aflplusplus:3.12c
COPY src/mayhemit.c .
RUN afl-gcc-fast mayhemit.c -o /mayhemit 
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]
CMD ["/mayhemit", "@@"]
