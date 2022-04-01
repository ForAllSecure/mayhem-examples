FROM fuzzers/aflplusplus:3.12c
COPY src/fuzzme.cpp .
RUN afl-clang-fast++ -fno-inline fuzzme.cpp -o /fuzzme 
RUN echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/fuzzme", "@@"]
