# Build Instructions

Run the following to build the `fuzzme/c-uninstrumented` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/c-uninstrumented .
docker push $DOCKER_REGISTRY/fuzzme/c-uninstrumented
```

Then initiate a Mayhem run using the following Mayhemfile:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-uninstrumented:latest
duration: 60
project: fuzzme
target: c-uninstrumented
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme @@
```