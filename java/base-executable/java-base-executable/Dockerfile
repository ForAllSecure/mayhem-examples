FROM openjdk:8-jdk

COPY src/MayhemIt.java .

# Build MayhemIt.jar
RUN mkdir -p build && \
    javac -d build MayhemIt.java && \
    cd build && \
    jar -cfe MayhemIt.jar mayhemexamples.MayhemIt * && \
    chmod u+x MayhemIt.jar && \
    mv MayhemIt.jar /usr/bin/MayhemIt.jar && \
    rm -rf build

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/MayhemIt.jar", "@@" ]