## Building and Pushing the Docker Image

Run the following to build the `forallsecure/go-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/go-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/go-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/go-base-executable:latest
duration: 90
project: mayhem-examples
target: go-base-executable
cmds:
  - cmd: /go/mayhemit @@
```
