FROM fuzzers/jazzer:0.9.1-openjdk11
COPY FuzzMe.java .
# Build FuzzMe.jar
RUN mkdir -p build && \
    javac -d build FuzzMe.java && \
    cd build && \
    jar cvf FuzzMe.jar * && \
    mv FuzzMe.jar /usr/bin/FuzzMe.jar && \
    rm -rf build

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/jazzer_driver", "--cp=/usr/bin/FuzzMe.jar", "--target_class=fuzzme.FuzzMe" ]
