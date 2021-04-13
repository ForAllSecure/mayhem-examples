FROM fuzzers/aflplusplus:3.12c
COPY fuzzme.cpp .
RUN afl-clang-fast++ -O0 -g -fno-inline -o /fuzzme fuzzme.cpp
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
