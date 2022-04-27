## Building and Pushing the Docker Image

Run the following to build the `forallsecure/rust-base-executable` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/rust-base-executable .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/rust-base-executable
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: forallsecure/rust-base-executable:latest
duration: 90
project: forallsecure
target: rust-base-executable
cmds:
  - cmd: /mayhemit @@
```
