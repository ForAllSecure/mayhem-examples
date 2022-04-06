## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/ada-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/ada-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/ada-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/ada-base-executable:latest
project: mayhem-examples
target: ada-base-executable
duration: 90
cmds:
  - cmd: /mayhemit @@
```
