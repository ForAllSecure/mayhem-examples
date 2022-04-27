## Building and Pushing the Docker Image

Run the following to build the `forallsecure/cpp-afl-gcc` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-afl-gcc .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp-afl-gcc
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/cpp/cpp-afl-gcc:latest
duration: 90
project: cpp
target: cpp-afl-gcc
cmds:
  - cmd: /mayhemit @@
    afl: true
```
