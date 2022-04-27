## Building and Pushing the Docker Image

Run the following to build the `forallsecure/python-atheris` Docker image and push it to a specified Docker registry.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/python-atheris .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/python-atheris
```

## Executing the Mayhem Run

Then initiate a Mayhem run using a Mayhemfile similar to the following:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/python/python-atheris:latest
duration: 90
project: forallsecure
target: python-atheris
cmds:
  - cmd: /mayhemit.py
    libfuzzer: true
```