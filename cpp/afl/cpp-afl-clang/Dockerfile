FROM fuzzers/afl:2.52
COPY fuzzme.cpp .
RUN afl-clang++ -fno-inline fuzzme.cpp -o /fuzzme 
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
