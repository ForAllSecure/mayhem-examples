## Building and Pushing the Docker Image

Run the following to build the `fuzzme/c-libfuzzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/c-libfuzzer .
docker push $DOCKER_REGISTRY/fuzzme/c-libfuzzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.16'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-libfuzzer:latest
duration: 90
project: fuzzme
target: c-libfuzzer
cmds:
  - cmd: /fuzzme
    libfuzzer: true
```