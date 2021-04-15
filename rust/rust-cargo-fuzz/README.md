# Build Instructions

Run the following to build the `fuzzme/rust-cargo-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-cargo-fuzz .
docker push $DOCKER_REGISTRY/fuzzme/rust-cargo-fuzz
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/rust/rust-cargo-fuzz:latest
duration: 300
project: rust
target: rust-cargo-fuzz
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme/fuzz/target/x86_64-unknown-linux-gnu/release/fuzzme
    libfuzzer: true
```