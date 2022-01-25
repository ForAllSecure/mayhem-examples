## Building and Pushing the Docker Image

Run the following to build the `fuzzme/powerpc64le-c-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/powerpc64le-c-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/powerpc64le-c-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.15'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/powerpc64le-c-base-executable:latest
duration: 120
project: fuzzme
target: powerpc64le-c-base-executable
cmds:
  - cmd: /fuzzme @@
    env:
      QEMU_LD_PREFIX: /usr/powerpc64le-linux-gnu
```
