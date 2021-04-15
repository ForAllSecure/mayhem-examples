# Build Instructions

Run the following to build the `fuzzme/cpp-afl-gcc` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/cpp-afl-gcc .
docker push $DOCKER_REGISTRY/fuzzme/cpp-afl-gcc
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/cpp/cpp-afl-gcc:latest
duration: 300
project: cpp
target: cpp-afl-gcc
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme @@
    afl: true
```