FROM fuzzers/afl:2.52
COPY src/fuzzme.c .
RUN afl-clang -fno-inline fuzzme.c -o /fuzzme
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
