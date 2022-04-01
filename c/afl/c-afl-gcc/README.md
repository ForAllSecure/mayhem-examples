## Building and Pushing the Docker Image

Run the following to build the `fuzzme/c-afl-gcc` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/fuzzme/c-afl-gcc .
docker push $MAYHEM_DOCKER_REGISTRY/fuzzme/c-afl-gcc
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-afl-gcc:latest
duration: 90
project: fuzzme
target: c-afl-gcc
cmds:
  - cmd: /fuzzme @@
    afl: true
```
