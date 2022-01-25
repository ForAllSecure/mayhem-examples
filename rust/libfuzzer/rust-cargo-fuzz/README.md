## Building and Pushing the Docker Image

Run the following to build the `fuzzme/rust-cargo-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-cargo-fuzz .
docker push $DOCKER_REGISTRY/fuzzme/rust-cargo-fuzz
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.16'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/rust-cargo-fuzz:latest
duration: 90
project: rust
target: rust-cargo-fuzz
cmds:
  - cmd: /fuzzme/fuzz/target/x86_64-unknown-linux-gnu/release/fuzzme
    libfuzzer: true
```
