## Building and Pushing the Docker Image

Run the following to build the `fuzzme/android-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/android-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/android-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.14'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/android-base-executable:latest
duration: 90
project: fuzzme
target: android-base-executable
cmds:
  - cmd: /fuzzme @@
```
