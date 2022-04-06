## Building and Pushing the Docker Image

Run the following to build the `mayhem-examples/rust-afl` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust-afl .
docker push $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust-afl
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/mayhem-examples/rust/rust-afl:latest
duration: 90
project: mayhem-examples
target: rust-afl
cmds:
  - cmd: /mayhemit/target/debug/mayhemit
    afl: true
```
