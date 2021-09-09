## Building and Pushing the Docker Image

Run the following to build the `fuzzme/swift-libfuzzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/swift-libfuzzer .
docker push $DOCKER_REGISTRY/fuzzme/swift-libfuzzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.14'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/swift-libfuzzer:latest
duration: 90
project: fuzzme
target: swift-libfuzzer
cmds:
  - cmd: /fuzzme
    libfuzzer: true
```
