FROM zenika/kotlin:1.4.20-M2-jdk11-slim
COPY src/mayhemit.kt .
RUN kotlinc mayhemit.kt -include-runtime -d mayhemit.jar

FROM fuzzers/jazzer:0.9.1-openjdk11
COPY --from=0 /mayhemit.jar .

# Set to fuzz!
ENTRYPOINT []
CMD [ "/usr/bin/jazzer_driver", "--cp=/mayhemit.jar", "--target_class=mayhemexamples.FuzzmeKt" ]