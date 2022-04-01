FROM fuzzers/aflplusplus:3.12c
COPY src/fuzzme.c .
RUN afl-gcc-fast fuzzme.c -o /fuzzme 
RUN echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/fuzzme", "@@"]
