## Building and Pushing the Docker Image

Run the following to build the `fuzzme/python-atheris` Docker image and push it to a specified Docker registry.

```sh
docker build -t $DOCKER_REGISTRY/fuzzme/python-atheris .
docker push $DOCKER_REGISTRY/fuzzme/python-atheris
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
version: '1.16'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/python/python-atheris:latest
duration: 90
project: python
target: python-atheris
cmds:
  - cmd: /fuzzme.py
    libfuzzer: true
```