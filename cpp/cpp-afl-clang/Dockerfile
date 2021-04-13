FROM fuzzers/afl:2.52
COPY fuzzme.cpp .
RUN afl-clang++ -O0 -g -fno-inline -o /fuzzme fuzzme.cpp
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
