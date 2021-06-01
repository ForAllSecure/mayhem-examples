## Building and Pushing the Docker Image

Run the following to build the `fuzzme/cpp-afl-clang` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/cpp-afl-clang .
docker push $DOCKER_REGISTRY/fuzzme/cpp-afl-clang
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/cpp-afl-clang:latest
duration: 300
project: fuzzme
target: cpp-afl-clang
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme @@
    afl: true
```