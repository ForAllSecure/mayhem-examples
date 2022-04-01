## Building and Pushing the Docker Image

Run the following to build the `fuzzme/java-jazzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/fuzzme/java-jazzer .
docker push $MAYHEM_DOCKER_REGISTRY/fuzzme/java-jazzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/fuzzme/java-jazzer:latest
duration: 90
project: fuzzme
target: java-jazzer
cmds:
  - cmd: /usr/bin/jazzer_driver --cp=/usr/bin/FuzzMe.jar --target_class=fuzzme.FuzzMe
    libfuzzer: true
```
