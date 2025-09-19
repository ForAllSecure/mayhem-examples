FROM debian:bookworm-slim
RUN apt-get update && \ 
    apt-get install -fy wget zip make && \
    wget https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip && \
    unzip android-ndk-r21e-linux-x86_64.zip && \
    cd android-ndk-r21e && \
    mkdir mayhemit && \
    cd mayhemit && \
    mkdir jni
COPY src/mayhemit.c src/Android.mk src/Application.mk /android-ndk-r21e/mayhemit/jni/
WORKDIR /android-ndk-r21e/mayhemit/jni/
RUN ../../ndk-build
WORKDIR /android-ndk-r21e/mayhemit/libs/x86_64

FROM debian:bookworm-slim
COPY --from=0 /android-ndk-r21e/mayhemit/libs/x86_64/mayhemit /mayhemit

# Set to fuzz!
ENTRYPOINT []
CMD [ "mayhemit", "@@" ]
