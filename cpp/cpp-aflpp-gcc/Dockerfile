FROM fuzzers/aflplusplus:3.12c
COPY fuzzme.cpp .
RUN afl-g++-fast -fno-inline fuzzme.cpp -o /fuzzme 
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
