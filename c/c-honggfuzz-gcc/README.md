# Build Instructions

Run the following to build the `fuzzme/c-honggfuzz-gcc` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/c-honggfuzz-gcc .
docker push $DOCKER_REGISTRY/fuzzme/c-honggfuzz-gcc
```

Then initiate a Mayhem run using the following Mayhemfile:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-honggfuzz-gcc:latest
duration: 300
project: fuzzme
target: c-honggfuzz-gcc
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme
    honggfuzz: true
```