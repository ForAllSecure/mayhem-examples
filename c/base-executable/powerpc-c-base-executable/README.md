## Building and Pushing the Docker Image

Run the following to build the `forallsecure/powerpc-c-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/powerpc-c-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/powerpc-c-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/powerpc-c-base-executable:latest
duration: 120
project: mayhem-examples
target: powerpc-c-base-executable
cmds:
  - cmd: /mayhemit @@
    env:
      QEMU_LD_PREFIX: /usr/powerpc-linux-gnu
```
