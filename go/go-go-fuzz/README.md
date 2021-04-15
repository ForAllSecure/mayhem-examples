# Build Instructions

Run the following to build the `fuzzme/go-go-fuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/go-go-fuzz .
docker push $DOCKER_REGISTRY/fuzzme/go-go-fuzz
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/go/go-go-fuzz:latest
duration: 300
project: go
target: go-go-fuzz
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /go/fuzzme.libfuzzer
    libfuzzer: true
```