FROM ubuntu:groovy

# Set non-interactive mode so tzdata doesn't hold up Docker build
ENV DEBIAN_FRONTEND=noninteractive
COPY src/fuzzme.swift .
RUN apt-get update && \
    apt-get install -fy \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev \
	  wget \ 
          libpython3.8 && \
    wget https://swift.org/builds/swift-5.4.2-release/ubuntu2004/swift-5.4.2-RELEASE/swift-5.4.2-RELEASE-ubuntu20.04.tar.gz && \
    tar -xvzf swift-5.4.2-RELEASE-ubuntu20.04.tar.gz
ENV PATH="${PATH}:/swift-5.4.2-RELEASE-ubuntu20.04/usr/bin"
RUN swiftc -sanitize=fuzzer -parse-as-library fuzzme.swift -o /fuzzme

# Set multi-stage build to optimize space
FROM ubuntu:groovy
COPY --from=0 /fuzzme .
COPY --from=0 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libswiftSwiftOnoneSupport.so /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libswiftSwiftOnoneSupport.so
COPY --from=0 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libswiftCore.so /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libswiftCore.so
COPY --from=0 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicui18nswift.so.65 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicui18nswift.so.65
COPY --from=0 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicuucswift.so.65 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicuucswift.so.65
COPY --from=0 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicudataswift.so.65 /swift-5.4.2-RELEASE-ubuntu20.04/usr/lib/swift/linux/libicudataswift.so.65
RUN mkdir /corpus && echo seed > /corpus/seed

# Set to fuzz!
ENTRYPOINT []
CMD [ "/fuzzme" ]
