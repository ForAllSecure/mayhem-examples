# Build Instructions

Run the following to build the `fuzzme/c-libfuzzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/c-libfuzzer .
docker push $DOCKER_REGISTRY/fuzzme/c-libfuzzer
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-libfuzzer:latest
duration: 300
project: fuzzme
target: c-libfuzzer
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme
    libfuzzer: true
```