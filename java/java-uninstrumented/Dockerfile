FROM openjdk:8-jdk

COPY FuzzMe.java .

# Build FuzzMe.jar
RUN mkdir -p build && \
    javac -d build FuzzMe.java && \
    cd build && \
    jar -cfe FuzzMe.jar fuzzme.FuzzMe * && \
    chmod u+x FuzzMe.jar && \
    mv FuzzMe.jar /usr/bin/FuzzMe.jar && \
    rm -rf build

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/FuzzMe.jar", "@@" ]