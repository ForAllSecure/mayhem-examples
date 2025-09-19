FROM debian:bookworm-slim AS builder
RUN apt-get update && \
    apt-get install -fy build-essential gobjc gobjc++ gnustep gnustep-devel libgnustep-base-dev
COPY src/mayhemit.m .
RUN gcc mayhemit.m $(gnustep-config --objc-flags) $(gnustep-config --base-libs) -o mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
