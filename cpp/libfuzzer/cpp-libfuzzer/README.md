## Building and Pushing the Docker Image

Run the following to build the `forallsecure/cpp-libfuzzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-libfuzzer .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-libfuzzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-libfuzzer:latest
duration: 90
project: mayhem-examples
target: cpp-libfuzzer
cmds:
  - cmd: /mayhemit
    libfuzzer: true
```