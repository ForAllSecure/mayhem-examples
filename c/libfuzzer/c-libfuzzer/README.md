## Building and Pushing the Docker Image

Run the following to build the `forallsecure/c-libfuzzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/c-libfuzzer .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/c-libfuzzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/c-libfuzzer:latest
duration: 90
project: mayhem-examples
target: c-libfuzzer
cmds:
  - cmd: /mayhemit
    libfuzzer: true
```