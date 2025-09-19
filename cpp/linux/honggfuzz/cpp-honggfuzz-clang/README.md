## Building and Pushing the Docker Image

Run the following to build the `forallsecure/cpp-honggfuzz-clang` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-honggfuzz-clang .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-honggfuzz-clang
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-honggfuzz-clang:latest
duration: 90
project: mayhem-examples
target: cpp-honggfuzz-clang
cmds:
  - cmd: /mayhemit
    honggfuzz: true
```
