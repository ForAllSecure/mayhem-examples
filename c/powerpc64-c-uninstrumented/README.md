## Building and Pushing the Docker Image

Run the following to build the `fuzzme/powerpc64-c-uninstrumented` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/powerpc64-c-uninstrumented .
docker push $DOCKER_REGISTRY/fuzzme/powerpc64-c-uninstrumented
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/powerpc64-c-uninstrumented:latest
duration: 300
project: fuzzme
target: powerpc64-c-uninstrumented
cmds:
  - cmd: /fuzzme @@
    env:
      QEMU_LD_PREFIX: /usr/powerpc64-linux-gnu
```