FROM zenika/kotlin:1.4.20-M2-jdk11-slim
COPY fuzzme.kt .
RUN kotlinc fuzzme.kt -include-runtime -d fuzzme.jar

FROM fuzzers/jazzer:0.9.1-openjdk11
COPY --from=0 /fuzzme.jar .

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/jazzer_driver", "--cp=/fuzzme.jar", "--target_class=fuzzme.FuzzmeKt" ]