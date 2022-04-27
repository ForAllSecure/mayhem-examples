## Building and Pushing the Docker Image

Run the following to build the `forallsecure/java-jazzer` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/java-jazzer .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/java-jazzer
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/java-jazzer:latest
duration: 90
project: mayhem-examples
target: java-jazzer
cmds:
  - cmd: /usr/bin/jazzer_driver --cp=/usr/bin/MayhemIt.jar --target_class=mayhemexamples.MayhemIt
    libfuzzer: true
```
