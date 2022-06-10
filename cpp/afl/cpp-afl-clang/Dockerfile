FROM fuzzers/afl:2.52
COPY src/mayhemit.cpp .
RUN afl-clang++ -fno-inline mayhemit.cpp -o /mayhemit 
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]
CMD ["/mayhemit", "@@"]
