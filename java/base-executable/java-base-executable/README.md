## Building and Pushing the Docker Image

Run the following to build the `fuzzme/java-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/java-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/java-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.15'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/java-base-executable:latest
duration: 120
project: fuzzme
target: java-base-executable
cmds:
  - cmd: /usr/bin/TestMe.jar @@
    env:
      MFUZZ_JAVA: '1'
```