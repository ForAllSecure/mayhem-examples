## Building and Pushing the Docker Image

Run the following to build the `fuzzme/ada-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/ada-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/ada-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

> **Note:** This run may take up to two hours to detect the bug!

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/ada-base-executable:latest
project: fuzzme
target: ada-base-executable
cmds:
  - cmd: /fuzzme @@
```