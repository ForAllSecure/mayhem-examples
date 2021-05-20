## Building and Pushing the Docker Image

Run the following to build the `fuzzme/rust-uninstrumented` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/rust-uninstrumented .
docker push $DOCKER_REGISTRY/fuzzme/rust-uninstrumented
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: fuzzme/rust-uninstrumented:latest
duration: 600
project: fuzzme
target: rust-uninstrumented
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme @@
```