FROM fuzzers/honggfuzz:1.9
COPY fuzzme.cpp .
RUN hfuzz-clang++ -O0 -g -fno-inline -o fuzzme fuzzme.cpp

FROM debian:stable-slim
COPY --from=0 /fuzzme .
COPY --from=0 /usr/local/bin/honggfuzz /usr/local/bin/honggfuzz
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind-ptrace.so.0 /usr/lib/x86_64-linux-gnu/libunwind-ptrace.so.0
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8 /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8
COPY --from=0 /usr/lib/x86_64-linux-gnu/libbfd-2.31.1-system.so /usr/lib/x86_64-linux-gnu/libbfd-2.31.1-system.so
COPY --from=0 /usr/lib/x86_64-linux-gnu/libopcodes-2.31.1-system.so /usr/lib/x86_64-linux-gnu/libopcodes-2.31.1-system.so
COPY --from=0 /usr/lib/x86_64-linux-gnu/libunwind.so.8 /usr/lib/x86_64-linux-gnu/libunwind.so.8
RUN mkdir /corpus && echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT ["honggfuzz", "-f", "/corpus", "--"]
CMD ["/fuzzme"]