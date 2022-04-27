## Building and Pushing the Docker Image

Run the following to build the `forallsecure/rust-afl` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/rust-afl .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/rust-afl
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/rust/rust-afl:latest
duration: 90
project: forallsecure
target: rust-afl
cmds:
  - cmd: /mayhemit/target/debug/mayhemit
    afl: true
```
