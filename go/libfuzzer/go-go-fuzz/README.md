## Building and Pushing the Docker Image

Run the following to build the `forallsecure/go-go-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/go-go-fuzz .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/go-go-fuzz
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/go-go-fuzz:latest
duration: 90
project: mayhem-examples
target: go-go-fuzz
cmds:
  - cmd: /go/mayhemit.libfuzzer
    libfuzzer: true
```
