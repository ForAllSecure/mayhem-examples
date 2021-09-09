## Building and Pushing the Docker Image

Run the following to build the `fuzzme/kotlin-jazzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/kotlin-jazzer .
docker push $DOCKER_REGISTRY/fuzzme/kotlin-jazzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: 1.14
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/kotlin-jazzer:latest
duration: 90
project: fuzzme
target: kotlin
cmds:
  - cmd: /usr/bin/jazzer_driver --cp=/fuzzme.jar --target_class=fuzzme.FuzzmeKt
    libfuzzer: true
```
