## Building and Pushing the Docker Image

Run the following to build the `fuzzme/ada-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/fuzzme/ada-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/fuzzme/ada-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/fuzzme/ada-base-executable:latest
project: fuzzme
target: ada-base-executable
duration: 90
cmds:
  - cmd: /fuzzme @@
```
