## Building and Pushing the Docker Image

Run the following to build the `fuzzme/cpp-afl-gcc` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/cpp-afl-gcc .
docker push $DOCKER_REGISTRY/fuzzme/cpp-afl-gcc
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: 1.14
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/cpp/cpp-afl-gcc:latest
duration: 90
project: cpp
target: cpp-afl-gcc
cmds:
  - cmd: /fuzzme @@
    afl: true
```
