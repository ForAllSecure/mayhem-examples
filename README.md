<h1 align="center">Fuzzme with Mayhem</h1>

<p align="center">
  <img src=".images/mayhem-logo.png" alt="Hello World! of Mayhem Docker Images"/>
</p>

Mayhem fuzzme templates for programming languages and fuzzers that you love! Like a "Hello World!" but for fuzzing!

![visitors](https://visitor-badge.glitch.me/badge?page_id=ForAllSecure.fuzzme)

---

## Quickstart

Use the Mayhem CLI to execute a new Mayhem run via the `mayhem run` command for any `fuzzme` target directory with a valid `Mayhemfile`. Alternatively, Mayhem users can create a new Mayhem run by choosing to fuzz a `fuzzme` target Docker image uploaded to either the private Mayhem Docker Registry or the public Docker Hub.

> **Note:** You will first need to upload the below `fuzzme` examples to either a private Mayhem Docker Registry or to the public Docker Hub. Read the [How to Get Started](#how-to-get-started) section for more details.

## Fuzzme List by Language/Fuzzer

Order is alphabetical.

|     Target Name                                                                |     Language     |    Environment    |     Fuzzer         |    Image Size     | Link |
| :---------------                                                               | :--------------: | :---------------: | :---------------:  | :-----------------| ---- |
| [fuzzme/ada-base-executable](ada/base-executable/ada-base-executable)          | Ada              | Ada2012           | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/ada-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/ada-base-executable)
| [fuzzme/c-afl-clang](c/afl/c-afl-clang)                                        | C                | C99               | AFL-clang          | ![](https://img.shields.io/docker/image-size/fuzzme/c-afl-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-afl-clang)
| [fuzzme/c-afl-gcc](c/afl/c-afl-gcc)                                            | C                | C99               | AFL-gcc            | ![](https://img.shields.io/docker/image-size/fuzzme/c-afl-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-afl-gcc)
| [fuzzme/c-aflpp-clang](c/aflpp/c-aflpp-clang)                                  | C                | C99               | AFL++-clang        | ![](https://img.shields.io/docker/image-size/fuzzme/c-aflpp-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-aflpp-clang)
| [fuzzme/c-aflpp-gcc](c/aflpp/c-aflpp-gcc)                                      | C                | C99               | AFL++-gcc          | ![](https://img.shields.io/docker/image-size/fuzzme/c-aflpp-gcc) | [![](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-aflpp-gcc)
| [fuzzme/c-libfuzzer](c/libfuzzer/c-libfuzzer)                                  | C                | C99               | libFuzzer          | ![](https://img.shields.io/docker/image-size/fuzzme/c-libfuzzer) | [![](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-libfuzzer)
| [fuzzme/c-honggfuzz-clang](c/honggfuzz/c-honggfuzz-clang)                      | C                | C99               | Honggfuzz-clang    | ![](https://img.shields.io/docker/image-size/fuzzme/c-honggfuzz-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-honggfuzz-clang)
| [fuzzme/c-honggfuzz-gcc](c/honggfuzz/c-honggfuzz-gcc)                          | C                | C99               | Honggfuzz-gcc      | ![](https://img.shields.io/docker/image-size/fuzzme/c-honggfuzz-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-honggfuzz-gcc)
| [fuzzme/c-base-executable](c/base-executable/c-base-executable)                | C                | C99               | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/c-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/c-base-executable)
| [fuzzme/cpp-afl-clang](cpp/afl/cpp-afl-clang)                                  | C++              | C++11             | AFL-clang          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-afl-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-afl-clang)
| [fuzzme/cpp-afl-gcc](cpp/afl/cpp-afl-gcc)                                      | C++              | C++11             | AFL-gcc            | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-afl-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-afl-gcc)
| [fuzzme/cpp-aflpp-clang](cpp/aflpp/cpp-aflpp-clang)                            | C++              | C++11             | AFL++-clang        | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-aflpp-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-aflpp-clang)
| [fuzzme/cpp-aflpp-gcc](cpp/aflpp/cpp-aflpp-gcc)                                | C++              | C++11             | AFL++-gcc          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-aflpp-gcc) | [![](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-aflpp-gcc)
| [fuzzme/cpp-libfuzzer](cpp/libfuzzer/cpp-libfuzzer)                            | C++              | C++11             | libFuzzer          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-libfuzzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-libfuzzer)
| [fuzzme/cpp-honggfuzz-clang](cpp/honggfuzz/cpp-honggfuzz-clang)                | C++              | C++11             | Honggfuzz-clang    | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-honggfuzz-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-honggfuzz-clang)
| [fuzzme/cpp-honggfuzz-gcc](cpp/honggfuzz/cpp-honggfuzz-gcc)                    | C++              | C++11             | Honggfuzz-gcc      | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-honggfuzz-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-honggfuzz-gcc)
| [fuzzme/cpp-base-executable](cpp/base-executable/cpp-base-executable)          | C++              | C++11             | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/cpp-base-executable)
| [fuzzme/kotlin-jazzer](kotlin/libfuzzer/kotlin-jazzer)                         | Kotlin           | Openjdk11         | jazzer             | ![](https://img.shields.io/docker/image-size/fuzzme/kotlin-jazzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/kotlin-jazzer)
| [fuzzme/java-jazzer](java/libfuzzer/java-jazzer)                               | Java             | Openjdk11         | jazzer             | ![](https://img.shields.io/docker/image-size/fuzzme/java-jazzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/java-jazzer)
| [fuzzme/go-go-fuzz](go/libfuzzer/go-go-fuzz)                                   | Go               | Go 1.13           | go-fuzz            | ![](https://img.shields.io/docker/image-size/fuzzme/go-go-fuzz) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/go-go-fuzz)
| [fuzzme/go-base-executable](go/base-executable/go-base-executable)             | Go               | Go 1.13           | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/go-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/go-base-executable)
| [fuzzme/ocaml-base-executable](ocaml/base-executable/ocaml-base-executable)    | OCaml            | OCaml 4.0         | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/ocaml-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/ocaml-base-executable)
| [fuzzme/python-atheris](python/libfuzzer/python-atheris)                       | Python           | Python3.8         | Atheris            | ![](https://img.shields.io/docker/image-size/fuzzme/python-atheris) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/python-atheris)
| [fuzzme/rust-afl](rust/afl/rust-afl)                                           | Rust             | Rust 1.44         | afl.rs             | ![](https://img.shields.io/docker/image-size/fuzzme/rust-afl) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/rust-afl)
| [fuzzme/rust-cargo-fuzz](rust/libfuzzer/rust-cargo-fuzz)                       | Rust             | Rust 1.44         | cargo-fuzz         | ![](https://img.shields.io/docker/image-size/fuzzme/rust-cargo-fuzz) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/rust-cargo-fuzz)
| [fuzzme/rust-base-executable](rust/base-executable/rust-base-executable)                       | Rust             | Rust 1.44         | Base-Executable    | ![](https://img.shields.io/docker/image-size/fuzzme/rust-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/fuzzme/rust-base-executable)

## How can I contribute?

Don't see your language/fuzzer in the list above? Let us know or better yet send us a PR adding it! Checkout our [CONTRIBUTING.md](./CONTRIBUTING.md) guidelines.

## Why Use Docker?

Mayhem performs behavioral testing where the application is dynamically ran and analyzed. In order to do so, Mayhem needs the complete application, including executable, libraries, and configuration files.

Docker is popular because it solves the problem of creating a reproducible environment. To quote from [Docker](https://docs.docker.com/get-started/):

> Docker is a platform for developers and sysadmins to develop, deploy, and run applications with containers. The use of Linux containers to deploy applications is called containerization. Containers are not new, but their use for easily deploying applications is.

A container runs natively on Linux, and shares the underlying runtime. Three key benefits of Docker that Mayhem leverages include:

1. **Isolation:** Docker provides a convenient way to isolate different apps, each of which may have different dependencies.
2. **Configuration-as-Code:**  When you create a Docker image, you write a `Dockerfile`, which gives the exact commands to build the image. The `Dockerfile` can be edited and revision controlled like any other text file.
3. **Efficiency:** Docker uses a layered file system, which means if two applications share the same files, you only need one copy.

## Fuzzing Docker Targets with Mayhem

Given a Docker image, Mayhem will spin up and tear down Docker containers as needed to run the specified application in the containerized environment.

Mayhem can run Docker images stored on either the included private Docker registry (as a part of your Mayhem deployment) or through [Docker Hub](https://hub.docker.com), which hosts tens of thousands of public Docker images. If you are storing your images on your private registry, you will need to specify this in the Mayhemfile.

## How to Get Started

Navigate to each Language/Fuzzer folder and follow the individual build instructions. Alternatively, you can use the included `Makefile` in the root directory of the `fuzzme` GitHub repository to build the compilation of Dockerfiles and then tag and push the resulting Docker images to the Docker registry of your choice (private or public such as [Docker Hub](https://hub.docker.com/)) all in one go!

You'll need to first log into your desired Docker registry using the `docker login` command and then set a `DOCKER_REGISTRY` environment variable to the URL of the specified Docker registry.

For example, for a private Docker registry you'll want the following:

```sh
export DOCKER_REGISTRY=tutorial.forallsecure.com:5000
```

Alternatively, for a public Docker registry like Docker Hub, you'll want the following:

```sh
export DOCKER_REGISTRY=docker.io
```

Once complete, just run the following commands:

```sh
make build
make push
```

With the Docker images now pushed to a private or public Docker registry, just use either the Mayhem CLI or the Mayhem UI to create a new run and start fuzzing!

For example, you'll need to set a `Mayhemfile` with a `baseimage` parameter similar to the following for a private Docker registry, where `$MAYHEM_DOCKER_REGISTRY` represents the URL of the private Mayhem Docker registry:

```yaml
version: '1.13'
baseimage: $MAYHEM_DOCKER_REGISTRY/fuzzme/c-base-executable:latest
duration: 600
project: fuzzme
target: c-base-executable
cmds:
  - cmd: /fuzzme @@
```

Otherwise, you can set the `Mayhemfile` with a `baseimage` parameter to a public Docker Hub URL like so:

```yaml
version: '1.13'
baseimage: fuzzme/c-base-executable:latest
duration: 600
project: fuzzme
target: c-base-executable
cmds:
  - cmd: /fuzzme @@
```

## About Us

ForAllSecure was founded with the mission to make the world’s critical software safe. The company has been applying its patented technology from over a decade of CMU research to solving the difficult challenge of making software safer. ForAllSecure has partnered with Fortune 1000 companies in aerospace, automotive and high-tech industries, as well as the US Department of Defense to integrate Mayhem into software development cycles for continuous security. Profitable and revenue-funded, the company is scaling rapidly.

[https://forallsecure.com/](https://forallsecure.com/)