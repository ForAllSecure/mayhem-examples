## Building and Pushing the Docker Image

Run the following to build the `fuzzme/go-go-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/go-go-fuzz .
docker push $DOCKER_REGISTRY/fuzzme/go-go-fuzz
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.17'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/go/go-go-fuzz:latest
duration: 90
project: go
target: go-go-fuzz
cmds:
  - cmd: /go/fuzzme.libfuzzer
    libfuzzer: true
```
