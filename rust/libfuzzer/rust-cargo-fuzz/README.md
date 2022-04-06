## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/rust-cargo-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust-cargo-fuzz .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust-cargo-fuzz
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust-cargo-fuzz:latest
duration: 90
project: mayhem-examples
target: rust-cargo-fuzz
cmds:
  - cmd: /mayhemit/fuzz/target/x86_64-unknown-linux-gnu/release/mayhemit
    libfuzzer: true
```
