## Building and Pushing the Docker Image

Run the following to build the `fuzzme/rust-afl` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/fuzzme/rust-afl .
docker push $MAYHEM_DOCKER_REGISTRY/fuzzme/rust-afl
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/fuzzme/rust/rust-afl:latest
duration: 90
project: rust
target: rust-afl
cmds:
  - cmd: /fuzzme/target/debug/fuzzme
    afl: true
```
