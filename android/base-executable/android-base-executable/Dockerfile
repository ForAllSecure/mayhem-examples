FROM debian:buster-slim
RUN apt-get update && \ 
    apt-get install -fy wget zip make && \
    wget https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip && \
    unzip android-ndk-r21e-linux-x86_64.zip && \
    cd android-ndk-r21e && \
    mkdir fuzzme && \
    cd fuzzme && \
    mkdir jni
COPY src/fuzzme.c src/Android.mk src/Application.mk /android-ndk-r21e/fuzzme/jni/
WORKDIR /android-ndk-r21e/fuzzme/jni/
RUN ../../ndk-build
WORKDIR /android-ndk-r21e/fuzzme/libs/x86_64

FROM debian:buster-slim
COPY --from=0 /android-ndk-r21e/fuzzme/libs/x86_64/fuzzme /fuzzme

# Set to fuzz!
ENTRYPOINT []
CMD [ "fuzzme", "@@" ]
