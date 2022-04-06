## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/cpp-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/cpp-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/cpp-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/cpp-base-executable:latest
duration: 90
project: mayhem-examples
target: cpp-base-executable
cmds:
  - cmd: /mayhemit @@
```
