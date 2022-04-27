FROM fuzzers/aflplusplus:3.12c
COPY src/mayhemit.cpp .
RUN afl-g++-fast -fno-inline mayhemit.cpp -o /mayhemit 
RUN mkdir /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/mayhemit", "@@"]
