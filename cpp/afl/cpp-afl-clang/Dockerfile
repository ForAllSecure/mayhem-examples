FROM fuzzers/afl:2.52
COPY src/mayhemit.cpp .
RUN afl-clang++ -fno-inline mayhemit.cpp -o /mayhemit 
RUN mkdir /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/mayhemit", "@@"]
