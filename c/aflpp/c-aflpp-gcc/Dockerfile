FROM fuzzers/aflplusplus:3.12c
COPY src/mayhemit.c .
RUN afl-gcc-fast mayhemit.c -o /mayhemit 
RUN mkdir /tests && echo seed > /tests/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/tests", "-o", "/out"]
CMD ["/mayhemit", "@@"]
