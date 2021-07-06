## Building and Pushing the Docker Image

Run the following to build the `fuzzme/obj-c-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/obj-c-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/obj-c-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/obj-c-base-executable:latest
duration: 600
project: fuzzme
target: obj-c-base-executable
cmds:
  - cmd: /fuzzme @@
```
