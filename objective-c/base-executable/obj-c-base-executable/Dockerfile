FROM debian:stable-slim as builder
RUN apt-get update && \
    apt-get install -fy build-essential gobjc gobjc++ gnustep gnustep-devel libgnustep-base-dev
COPY src/fuzzme.m .
RUN gcc $(gnustep-config --objc-flags) $(gnustep-config --base-libs) fuzzme.m -o fuzzme 

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@
