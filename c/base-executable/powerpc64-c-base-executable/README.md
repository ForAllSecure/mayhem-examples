## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/powerpc64-c-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/powerpc64-c-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/powerpc64-c-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/powerpc64-c-base-executable:latest
duration: 120
project: mayhem-examples
target: powerpc64-c-base-executable
cmds:
  - cmd: /mayhemit @@
    env:
      QEMU_LD_PREFIX: /usr/powerpc64-linux-gnu
```
