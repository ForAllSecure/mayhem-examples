FROM fuzzers/afl:2.52
COPY src/fuzzme.cpp .
RUN afl-clang++ -fno-inline fuzzme.cpp -o /fuzzme 
RUN echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/fuzzme", "@@"]
