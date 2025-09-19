FROM fuzzers/honggfuzz:1.9
COPY src/mayhemit.c .
RUN hfuzz-clang -fno-inline mayhemit.c -o /mayhemit 

FROM debian:bookworm-slim
COPY --from=0 /mayhemit .
COPY --from=0 /usr/local/bin/honggfuzz /usr/local/bin/honggfuzz
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind-ptrace.so.0 /usr/lib/x86_64-linux-gnu/libunwind-ptrace.so.0
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8 /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8
COPY --from=0 /usr/lib/x86_64-linux-gnu/libbfd-2.31.1-system.so /usr/lib/x86_64-linux-gnu/libbfd-2.31.1-system.so
COPY --from=0 /usr/lib/x86_64-linux-gnu/libopcodes-2.31.1-system.so /usr/lib/x86_64-linux-gnu/libopcodes-2.31.1-system.so
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind.so.8 /usr/lib/x86_64-linux-gnu/libunwind.so.8
RUN mkdir /testsuite && echo seed > /testsuite/seed

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/testsuite", "--"]
CMD ["/mayhemit"]