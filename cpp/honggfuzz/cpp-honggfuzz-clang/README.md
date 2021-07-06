## Building and Pushing the Docker Image

Run the following to build the `fuzzme/cpp-honggfuzz-clang` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/cpp-honggfuzz-clang .
docker push $DOCKER_REGISTRY/fuzzme/cpp-honggfuzz-clang
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/cpp-honggfuzz-clang:latest
duration: 600
project: fuzzme
target: cpp-honggfuzz-clang
cmds:
  - cmd: /fuzzme
    honggfuzz: true
```
