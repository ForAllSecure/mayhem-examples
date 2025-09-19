FROM debian:bookworm-slim as builder
RUN apt-get update && \
    apt-get install -fy build-essential gobjc gobjc++ gnustep gnustep-devel libgnustep-base-dev
COPY src/mayhemit.m .
RUN gcc $(gnustep-config --objc-flags) $(gnustep-config --base-libs) mayhemit.m -o mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
