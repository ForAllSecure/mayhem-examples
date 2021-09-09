## Building and Pushing the Docker Image

Run the following to build the `fuzzme/ocaml-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/ocaml-base-executable .
docker push $DOCKER_REGISTRY/fuzzme/ocaml-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.14'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/ocaml-base-executable:latest
duration: 90
project: fuzzme
target: ocaml-base-executable
cmds:
  - cmd: /fuzzme @@
```
