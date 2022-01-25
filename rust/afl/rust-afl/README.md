## Building and Pushing the Docker Image

Run the following to build the `fuzzme/rust-afl` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-afl .
docker push $DOCKER_REGISTRY/fuzzme/rust-afl
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.15'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/rust/rust-afl:latest
duration: 90
project: rust
target: rust-afl
cmds:
  - cmd: /fuzzme/target/debug/fuzzme
    afl: true
```
