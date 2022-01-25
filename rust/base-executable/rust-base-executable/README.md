## Building and Pushing the Docker Image

Run the following to build the `fuzzme/rust-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/rust-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.15'
baseimage: fuzzme/rust-base-executable:latest
duration: 90
project: fuzzme
target: rust-base-executable
cmds:
  - cmd: /fuzzme @@
```
