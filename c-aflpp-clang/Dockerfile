FROM aflplusplus/aflplusplus
COPY fuzzme.c .
RUN afl-clang-fast -O0 -g -o fuzzme fuzzme.c

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
