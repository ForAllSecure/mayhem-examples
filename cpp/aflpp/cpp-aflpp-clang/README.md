## Building and Pushing the Docker Image

Run the following to build the `fuzzme/cpp-aflpp-clang` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/cpp-aflpp-clang .
docker push $DOCKER_REGISTRY/fuzzme/cpp-aflpp-clang
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/cpp-aflpp-clang:latest
duration: 90
project: fuzzme
target: cpp-aflpp-clang
cmds:
  - cmd: /fuzzme @@
    afl: true
```
