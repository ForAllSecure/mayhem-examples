## Building and Pushing the Docker Image

Run the following to build the `fuzzme/fortran-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/fuzzme/fortran-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/fuzzme/fortran-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: fuzzme/fortran-base-executable:latest
duration: 90
project: fuzzme
target: fortran-base-executable
cmds:
  - cmd: /fuzzme @@
```
