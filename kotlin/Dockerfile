FROM fuzzers/jazzer:0.9.1-openjdk11
RUN apt-get update && \
    rm /bin/sh && ln -s /bin/bash /bin/sh && \
    apt-get -qq -y install curl && \
    apt-get install -y unzip && \
    apt-get install -y zip && \
    curl -s https://get.sdkman.io | bash && \
    chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
COPY fuzzme.kt .
RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && \
    sdk install kotlin && \
    kotlinc fuzzme.kt -include-runtime -d fuzzme.jar

# Set to fuzz!
ENTRYPOINT []
CMD /fuzzme @@