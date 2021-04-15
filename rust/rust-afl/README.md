# Build Instructions

Run the following to build the `fuzzme/rust-afl` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-afl .
docker push $DOCKER_REGISTRY/fuzzme/rust-afl
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/rust/rust-afl:latest
duration: 300
project: rust
target: rust-afl
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme/target/debug/fuzzme @@
    afl: true
```