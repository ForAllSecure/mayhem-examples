# Build Instructions

Run the following to build the `fuzzme/ocaml-uninstrumented` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/ocaml-uninstrumented .
docker push $DOCKER_REGISTRY/fuzzme/ocaml-uninstrumented
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/ocaml/ocaml-uninstrumented:latest
duration: 300
project: ocaml
target: ocaml-uninstrumented
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /fuzzme @@
```