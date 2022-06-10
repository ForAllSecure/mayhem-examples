FROM fuzzers/aflplusplus:3.12c
COPY src/mayhemit.cpp .
RUN afl-clang-fast++ -fno-inline mayhemit.cpp -o /mayhemit 
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]
CMD ["/mayhemit", "@@"]
