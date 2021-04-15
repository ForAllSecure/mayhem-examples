# Build Instructions

Run the following to build the `fuzzme/c-aflpp-clang` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/c-aflpp-clang .
docker push $DOCKER_REGISTRY/fuzzme/c-aflpp-clang
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-aflpp-clang:latest
duration: 300
project: fuzzme
target: c-aflpp-clang
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /AFLplusplus/fuzzme @@
    afl: true
```