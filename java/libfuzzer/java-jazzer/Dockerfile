FROM fuzzers/jazzer:0.10.0-openjdk11
COPY src/MayhemIt.java .
# Build MayhemIt.jar
RUN mkdir -p build && \
    javac -d build MayhemIt.java && \
    cd build && \
    jar cvf MayhemIt.jar * && \
    mv MayhemIt.jar /usr/bin/MayhemIt.jar && \
    rm -rf build

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/jazzer_driver", "--cp=/usr/bin/MayhemIt.jar", "--target_class=mayhemexamples.MayhemIt" ]
