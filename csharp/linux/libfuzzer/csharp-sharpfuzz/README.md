## Building and Pushing the Docker Image

Run the following to build the `forallsecure/csharp-linux-sharpfuzz` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/csharp-linux-sharpfuzz .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/csharp-linux-sharpfuzz
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/csharp-sharpfuzz:latest
duration: 90
project: mayhem-examples
target: csharp-linux-sharpfuzz
cmds:
  - cmd: /fuzzme/libfuzzer-dotnet --target_path=/fuzzme/fuzzme
    libfuzzer: true
```
