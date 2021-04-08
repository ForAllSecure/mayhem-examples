FROM fuzzers/afl-gcc:2.52
COPY fuzzme.c .
RUN afl-gcc -O0 -g -o fuzzme fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
