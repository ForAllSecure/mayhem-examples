## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/kotlin-jazzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/kotlin-jazzer .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/kotlin-jazzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/kotlin-jazzer:latest
duration: 90
project: mayhem-examples
target: kotlin
cmds:
  - cmd: /usr/bin/jazzer_driver --cp=/mayhemit.jar --target_class=mayhemexamples.FuzzmeKt
    libfuzzer: true
```
