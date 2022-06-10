FROM fuzzers/afl:2.52
COPY src/mayhemit.cpp .
RUN afl-g++ -fno-inline mayhemit.cpp -o /mayhemit 
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]
CMD ["/mayhemit", "@@"]
