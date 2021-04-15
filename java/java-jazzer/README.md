# Build Instructions

Run the following to build the `fuzzme/java-jazzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/java-jazzer .
docker push $DOCKER_REGISTRY/fuzzme/java-jazzer
```

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.12'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/java/java-jazzer:latest
duration: 300
project: java
target: java-jazzer
tasks:
  - name: exploitability_factors
  - name: corpus_minimization
  - name: regression_testing
  - name: behavior_testing
cmds:
  - cmd: /usr/bin/jazzer_driver --cp=/usr/bin/FuzzMe.jar --target_class=fuzzme.FuzzMe
    libfuzzer: true
```