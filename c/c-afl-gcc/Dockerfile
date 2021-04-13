FROM fuzzers/afl:2.52
COPY fuzzme.c .
RUN afl-gcc -O0 -g -o /fuzzme fuzzme.c
RUN echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["afl-fuzz", "-i", "/corpus", "-o", "/out"]
CMD ["/fuzzme", "@@"]
