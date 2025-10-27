<h1 align="center">Mayhem Examples</h1>

<p align="center">
  <img src=".images/mayhem-logo.png" alt="Hello World! of Mayhem Docker Images"/>
</p>

Mayhem example templates for programming languages and fuzzers that you love! Like a "Hello World!" but for fuzzing!

![visitors](https://visitor-badge.glitch.me/badge?page_id=ForAllSecure.mayhem-examples)
[![CI](https://github.com/ForAllSecure/mayhem-examples/actions/workflows/build-linux-docker.yml/badge.svg)](https://github.com/ForAllSecure/mayhem-examples/actions/workflows/build-linux-docker.yml)

---

## Quickstart

Use the Mayhem CLI to execute a new Mayhem run (via the `mayhem run` command) for any mayhem-examples target directory with a valid `Mayhemfile`. Alternatively, Mayhem users can use the Mayhem UI to execute a new Mayhem run by selecting and fuzzing a mayhem-examples target Docker image uploaded to either the private Mayhem Docker Registry or the public [Docker Hub](https://hub.docker.com/).

> **Note:** Before executing a Mayhem run on most of the mayhem-examples, you'll need to first upload the below mayhem-example targets to either a private Mayhem Docker Registry, or to the public Github Container Registry or Docker Hub. Read the [How to Get Started](#how-to-get-started) section for more details. Windows targets can be built directly and packaged with the `mayhem package` command.

## Target List by Language/Fuzzer

Order is alphabetical.

|     Target Name                                                                    |     Language     |    Environment    |     Fuzzer         |    Image Size     | Link |
| :---------------                                                                   | :--------------: | :---------------: | :---------------:  | :-----------------| ---- |
| [forallsecure/ada-base-executable](ada/base-executable/ada-base-executable)              | Ada              | Ada2012           | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/ada-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/ada-base-executable)
| [forallsecure/android-base-executable](android/base-executable/android-base-executable)  | C                | C99               | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/android-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/android-base-executable)
| [forallsecure/c-afl-clang](c/afl/c-afl-clang)                                            | C                | C99               | [AFL-clang](https://github.com/google/AFL) | ![](https://img.shields.io/docker/image-size/forallsecure/c-afl-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-afl-clang)
| [forallsecure/c-afl-gcc](c/afl/c-afl-gcc)                                                | C                | C99               | [AFL-gcc](https://github.com/google/AFL) | ![](https://img.shields.io/docker/image-size/forallsecure/c-afl-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-afl-gcc)
| [forallsecure/c-aflpp-clang](c/aflpp/c-aflpp-clang)                                      | C                | C99               | [AFL++-clang](https://github.com/AFLplusplus/AFLplusplus) | ![](https://img.shields.io/docker/image-size/forallsecure/c-aflpp-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-aflpp-clang)
| [forallsecure/c-aflpp-gcc](c/aflpp/c-aflpp-gcc)                                          | C                | C99               | [AFL++-gcc](https://github.com/AFLplusplus/AFLplusplus) | ![](https://img.shields.io/docker/image-size/forallsecure/c-aflpp-gcc) | [![](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-aflpp-gcc)
| [forallsecure/c-base-executable](c/base-executable/c-base-executable)                    | C                | C99               | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/c-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-base-executable)
| [forallsecure/c-honggfuzz-clang](c/honggfuzz/c-honggfuzz-clang)                          | C                | C99               | [Honggfuzz-clang](https://github.com/google/honggfuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/c-honggfuzz-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-honggfuzz-clang)
| [forallsecure/c-honggfuzz-gcc](c/honggfuzz/c-honggfuzz-gcc)                              | C                | C99               | [Honggfuzz-gcc](https://github.com/google/honggfuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/c-honggfuzz-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-honggfuzz-gcc)
| [forallsecure/c-libfuzzer](c/libfuzzer/c-libfuzzer)                                      | C                | C99               | [libFuzzer](https://llvm.org/docs/LibFuzzer.html) | ![](https://img.shields.io/docker/image-size/forallsecure/c-libfuzzer) | [![](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/c-libfuzzer)
| [forallsecure/cpp-afl-clang](cpp/afl/cpp-afl-clang)                                      | C++              | C++11             | [AFL-clang](https://github.com/google/AFL) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-afl-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-afl-clang)
| [forallsecure/cpp-afl-gcc](cpp/afl/cpp-afl-gcc)                                          | C++              | C++11             | [AFL-gcc](https://github.com/google/AFL) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-afl-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-afl-gcc)
| [forallsecure/cpp-aflpp-clang](cpp/aflpp/cpp-aflpp-clang)                                | C++              | C++11             | [AFL++-clang](https://github.com/AFLplusplus/AFLplusplus) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-aflpp-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-aflpp-clang)
| [forallsecure/cpp-aflpp-gcc](cpp/aflpp/cpp-aflpp-gcc)                                    | C++              | C++11             | [AFL++-gcc](https://github.com/AFLplusplus/AFLplusplus) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-aflpp-gcc) | [![](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-aflpp-gcc)
| [forallsecure/cpp-base-executable](cpp/base-executable/cpp-base-executable)              | C++              | C++11             | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-base-executable)
| [forallsecure/cpp-honggfuzz-clang](cpp/honggfuzz/cpp-honggfuzz-clang)                    | C++              | C++11             | [Honggfuzz-clang](https://github.com/google/honggfuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-honggfuzz-clang) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-honggfuzz-clang)
| [forallsecure/cpp-honggfuzz-gcc](cpp/honggfuzz/cpp-honggfuzz-gcc)                        | C++              | C++11             | [Honggfuzz-gcc](https://github.com/google/honggfuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-honggfuzz-gcc) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-honggfuzz-gcc)
| [forallsecure/cpp-libfuzzer](cpp/libfuzzer/cpp-libfuzzer)                                | C++              | C++11             | [libFuzzer](https://llvm.org/docs/LibFuzzer.html) | ![](https://img.shields.io/docker/image-size/forallsecure/cpp-libfuzzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/cpp-libfuzzer)
| [forallsecure/csharp-sharpfuzz](csharp/libfuzzer/csharp-sharpfuzz)                       | C#               | .NET 6.0          | [sharpfuzz](https://github.com/Metalnem/sharpfuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/csharp-sharpfuzz) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/csharp-sharpfuzz)
| [forallsecure/fortran-base-executable](fortran/base-executable/fortran-base-executable)  | Fortran          | Fortran 8.3.0     | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/fortran-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/fortran-base-executable)
| [forallsecure/go-base-executable](go/base-executable/go-base-executable)                 | Go               | Go 1.13           | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/go-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/go-base-executable)
| [forallsecure/go-go-fuzz](go/libfuzzer/go-go-fuzz)                                       | Go               | Go 1.13           | [go-fuzz](https://github.com/dvyukov/go-fuzz) | ![](https://img.shields.io/docker/image-size/forallsecure/go-go-fuzz) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/go-go-fuzz)
| [forallsecure/java-base-executable](java/base-executable/java-base-executable)           | Java             | Openjdk11         | Base-Executable | ![](https://img.shields.io/docker/image-size/forallsecure/java-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/java-base-executable)
| [forallsecure/java-jazzer](java/libfuzzer/java-jazzer)                                   | Java             | Openjdk11         | [jazzer](https://github.com/CodeIntelligenceTesting/jazzer) | ![](https://img.shields.io/docker/image-size/forallsecure/java-jazzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/java-jazzer)
| [forallsecure/kotlin-jazzer](kotlin/libfuzzer/kotlin-jazzer)                             | Kotlin           | Openjdk11         | [jazzer](https://github.com/CodeIntelligenceTesting/jazzer) | ![](https://img.shields.io/docker/image-size/forallsecure/kotlin-jazzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/kotlin-jazzer)
| [forallsecure/obj-c-base-executable](objective-c/base-executable/obj-c-base-executable)  | Objective-C      | Objective-C 2.0   | Base-Executable | ![](https://img.shields.io/docker/image-size/forallsecure/obj-c-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/obj-c-base-executable)
| [forallsecure/ocaml-afl](ocaml/afl/ocaml-afl)                                            | OCaml            | OCaml 4.0         | [AFL](https://ocaml.org/manual/afl-fuzz.html) | ![](https://img.shields.io/docker/image-size/forallsecure/ocaml-afl) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/ocaml-afl)
| [forallsecure/ocaml-base-executable](ocaml/base-executable/ocaml-base-executable)        | OCaml            | OCaml 4.0         | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/ocaml-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/ocaml-base-executable)
| [forallsecure/python-atheris](python/libfuzzer/python-atheris)                           | Python           | Python3.8         | [Atheris](https://github.com/google/atheris) | ![](https://img.shields.io/docker/image-size/forallsecure/python-atheris) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/python-atheris)
| [forallsecure/rust-afl](rust/afl/rust-afl)                                               | Rust             | Rust 1.44         | [afl.rs](https://rust-fuzz.github.io/book/afl.html) | ![](https://img.shields.io/docker/image-size/forallsecure/rust-afl) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/rust-afl)
| [forallsecure/rust-base-executable](rust/base-executable/rust-base-executable)           | Rust             | Rust 1.44         | Base-Executable    | ![](https://img.shields.io/docker/image-size/forallsecure/rust-base-executable) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/rust-base-executable)
| [forallsecure/rust-cargo-fuzz](rust/libfuzzer/rust-cargo-fuzz)                           | Rust             | Rust 1.44         | [cargo-fuzz](https://rust-fuzz.github.io/book/cargo-fuzz.html) | ![](https://img.shields.io/docker/image-size/forallsecure/rust-cargo-fuzz) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/rust-cargo-fuzz)
| [forallsecure/swift-libfuzzer](swift/libfuzzer/swift-libfuzzer)                          | Swift            | Swift 5.4.2       | [libFuzzer](https://github.com/apple/swift/blob/main/docs/libFuzzerIntegration.md) | ![](https://img.shields.io/docker/image-size/forallsecure/swift-libfuzzer) | [![docker-logo](.images/docker-logo.png)](https://hub.docker.com/r/forallsecure/swift-libfuzzer)


#### Looking for Windows targets?

You can find information about building Windows base executable targets [here](base-executable/windows/README.md) and Windows libFuzzer targets [here](cpp/windows/libfuzzer/README.md).


## Supported Fuzzers

| Fuzzer    | dictionary | max_length | sanitizers |
| --------  | :--------- | :--------- | :--------- |
| mCode     | ✓          | ✓          | ✓          |
| AFL       | ✓          | ✓          |            |
| honggfuzz | ✓          | ✓          | ✓          |
| libFuzzer | ✓          | ✓          | ✓          |

Use the `Mayhemfile` parameters as follows:

* **Dictionary:** The path to an AFL-compatible dictionary file. The path should be relative to the root of the container. For instance, if the dictionary is under `/etc/foo/bar/http.dict` inside the image, the dictionary path in the Mayhemfile should be `/etc/foo/bar/http.dict`.

  ```yaml
  dictionary: /tmp/my-dictionary
  ```

* **Max Length:** Maximum length (in bytes) that will be provided as input to the fuzz target and should not exceed 100MB, otherwise the Mayhemfile will fail to validate. Test cases in the starting testsuite larger than the specified maximum length will be truncated to the value set.

  ```yaml
  max_length: 8192
  ```

* **Sanitizers:** Set to true only if the target executable is compiled with a sanitizer

  ```yaml
  sanitizer: false
  ```

## How can I contribute?

Don't see your language/fuzzer in the list above? Let us know or better yet send us a PR adding it! Checkout our [CONTRIBUTING.md](./CONTRIBUTING.md) guidelines.

## How to Get Started

Navigate to each Language/Fuzzer folder and follow the individual build instructions. Alternatively, you can use the included `Makefile` in the root directory of the `mayhem-examples` GitHub repository to build the compilation of Dockerfiles and then tag and push the resulting Docker images to the Docker registry of your choice (private or public such as [Docker Hub](https://hub.docker.com/)) all in one go!

You'll need to first log into your desired Docker registry using the `docker login` command and then set a `MAYHEM_DOCKER_REGISTRY` environment variable to the URL of the specified Docker registry.

For example, for a private Docker registry you'll want the following:

```sh
export MAYHEM_DOCKER_REGISTRY=tutorial.forallsecure.com:5000
```

Alternatively, for a public Docker registry like Docker Hub, you'll want the following:

```sh
export MAYHEM_DOCKER_REGISTRY=docker.io
```

Once complete, just run the following commands:

```sh
make build
make push
```

With the Docker images now pushed to a private or public Docker registry, just use either the Mayhem CLI or the Mayhem UI to create a new run and start fuzzing!

For example, you'll need to set a `Mayhemfile` with a `image` parameter similar to the following for a private Docker registry, where `$MAYHEM_DOCKER_REGISTRY` represents the URL of the private Mayhem Docker registry:

```yaml
image: $MAYHEM_DOCKER_REGISTRY/forallsecure/c-base-executable:latest
duration: 90
project: mayhem-examples
target: c-base-executable
cmds:
  - cmd: /mayhemit @@
```

Otherwise, you can set the `Mayhemfile` with a `image` parameter to a public Docker Hub URL like so:

```yaml
image: forallsecure/c-base-executable:latest
duration: 90
project: mayhem-examples
target: c-base-executable
cmds:
  - cmd: /mayhemit @@
```

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

## About Us

Mayhem was founded with the mission to make the world’s critical software safe. The company has been applying its patented technology from over a decade of CMU research to solving the difficult challenge of making software safer. Mayhem has partnered with Fortune 1000 companies in aerospace, automotive and high-tech industries, as well as the US Department of Defense to integrate Mayhem into software development cycles for continuous security. Profitable and revenue-funded, the company is scaling rapidly.

* [https://mayhem.security/](https://mayhem.security/)