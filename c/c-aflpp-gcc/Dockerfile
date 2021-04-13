FROM fuzzers/aflpp-gcc:3.12c
COPY fuzzme.c .
RUN afl-gcc-fast -O0 -g -o /fuzzme fuzzme.c
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
