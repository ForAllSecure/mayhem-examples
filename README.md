<h1 align="center">Fuzzme with Mayhem</h1>

<p align="center">
  <img src=".mayhem-logo.png" alt="Hello World! of Mayhem Docker Images"/>
</p>

Mayhem fuzzme templates for programming languages and fuzzers that you love! Like a "Hello World!" but for fuzzing!

![visitors](https://visitor-badge.glitch.me/badge?page_id=ForAllSecure.fuzzme)

---

## Fuzzme list by Language/Fuzzer

Order is alphabetical.

|     Target Name                                                |     Language     |    Environment    |     Fuzzer         |     Image Size     |
| :---------------                                               | :--------------: | :---------------: | :---------------:  | -----------------: |
| [fuzzme/ada-uninstrumented](ada-uninstrumented/Dockerfile)     | Ada              | Ada2012           | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/ada-uninstrumented)  |
| [fuzzme/c-afl-clang](c-afl-clang/Dockerfile)                   | C                | C99               | AFL-clang          | ![](https://img.shields.io/docker/image-size/fuzzme/c-afl-clang)  |
| [fuzzme/c-afl-gcc](c-afl-gcc/Dockerfile)                       | C                | C99               | AFL-gcc            | ![](https://img.shields.io/docker/image-size/fuzzme/c-afl-gcc)  |
| [fuzzme/c-aflpp-clang](c-aflpp-clang/Dockerfile)               | C                | C99               | AFL++-clang        | ![](https://img.shields.io/docker/image-size/fuzzme/c-aflpp-clang)  |
| [fuzzme/c-aflpp-gcc](c-aflpp-gcc/Dockerfile)                   | C                | C99               | AFL++-gcc          | ![](https://img.shields.io/docker/image-size/fuzzme/c-aflpp-gcc)  |
| [fuzzme/c-libfuzzer](c-libfuzzer/Dockerfile)                   | C                | C99               | libFuzzer          | ![](https://img.shields.io/docker/image-size/fuzzme/c-libfuzzer)  |
| [fuzzme/c-honggfuzz-clang](c-honggfuzz-clang/Dockerfile)       | C                | C99               | Honggfuzz-clang    | ![](https://img.shields.io/docker/image-size/fuzzme/c-honggfuzz-clang)  |
| [fuzzme/c-honggfuzz-gcc](c-honggfuzz-gcc/Dockerfile)           | C                | C99               | Honggfuzz-gcc      | ![](https://img.shields.io/docker/image-size/fuzzme/c-honggfuzz-gcc)  |
| [fuzzme/c-uninstrumented](c-uninstrumented/Dockerfile)         | C                | C99               | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/c-uninstrumented)  |
| [fuzzme/cpp-afl-clang](cpp-afl-clang/Dockerfile)               | C++              | C++11             | AFL-clang          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-afl-clang)  |
| [fuzzme/cpp-afl-gcc](cpp-afl-gcc/Dockerfile)                   | C++              | C++11             | AFL-gcc            | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-afl-gcc)  |
| [fuzzme/cpp-aflpp-clang](cpp-aflpp-clang/Dockerfile)           | C++              | C++11             | AFL++-clang        | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-aflpp-clang)  |
| [fuzzme/cpp-aflpp-gcc](cpp-aflpp-gcc/Dockerfile)               | C++              | C++11             | AFL++-gcc          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-aflpp-gcc)  |
| [fuzzme/cpp-libfuzzer](cpp-libfuzzer/Dockerfile)               | C++              | C++11             | libFuzzer          | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-libfuzzer)  |
| [fuzzme/cpp-honggfuzz-clang](cpp-honggfuzz-clang/Dockerfile)   | C++              | C++11             | Honggfuzz-clang    | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-honggfuzz-clang)  |
| [fuzzme/cpp-honggfuzz-gcc](cpp-honggfuzz-gcc/Dockerfile)       | C++              | C++11             | Honggfuzz-gcc      | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-honggfuzz-gcc)  |
| [fuzzme/cpp-uninstrumented](cpp-uninstrumented/Dockerfile)     | C++              | C++11             | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/cpp-uninstrumented)  |
| [fuzzme/kotlin-jazzer](kotlin-jazzer/Dockerfile)               | Kotlin           | Openjdk11         | jazzer             | ![](https://img.shields.io/docker/image-size/fuzzme/kotlin-jazzer) |
| [fuzzme/java-jazzer](java-jazzer/Dockerfile)                   | Java             | Openjdk11         | jazzer             | ![](https://img.shields.io/docker/image-size/fuzzme/java-jazzer) |
| [fuzzme/go-go-fuzz](go-go-fuzz/Dockerfile)                     | Go               | Go 1.11           | go-fuzz            | ![](https://img.shields.io/docker/image-size/fuzzme/go-go-fuzz)  |
| [fuzzme/go-uninstrumented](go-uninstrumented/Dockerfile)       | Go               | Go 1.11           | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/go-uninstrumented)  |
| [fuzzme/ocaml-uninstrumented](ocaml-uninstrumented/Dockerfile) | OCaml            | OCaml 4.0         | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/ocaml-uninstrumented)  |
| [fuzzme/python-atheris](python-atheris/Dockerfile)             | Python           | Python3.8         | Atheris            | ![](https://img.shields.io/docker/image-size/fuzzme/python-atheris) |
| [fuzzme/rust-afl](rust-afl/Dockerfile)                         | Rust             | Rust 1.44         | afl.rs             | ![](https://img.shields.io/docker/image-size/fuzzme/rust-afl)  |
| [fuzzme/rust-cargo-fuzz](rust-cargo-fuzz/Dockerfile)            | Rust             | Rust 1.44         | cargo-fuzz         | ![](https://img.shields.io/docker/image-size/fuzzme/rust-cargo-fuzz)  |
| [fuzzme/rust-uninstrumented](rust-uninstrumented/Dockerfile)   | Rust             | Rust 1.44         | Uninstrumented     | ![](https://img.shields.io/docker/image-size/fuzzme/rust-uninstrumented)  |

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

## How Mayhem Uses Docker

Consider the problem of analyzing the Apache web server. When you start Apache, it writes a PID file. Writing that file is a *side effect*. We want runs to be reproducible, so Mayhem has to undo side effects on each run.

Therefore, Mayhem will automatically pull and run an application within a Docker image, and each time Mayhem runs the application, it:

1. Starts up a fresh copy of the image.
2. Runs the program specified in the `Mayhemfile`
3. Stops the image, deleting any side-effects.

Mayhem can launch a Docker image up to thousands of times per second. Each time the image is launched, a new process is created. Each time the process finishes, Mayhem (using Docker) cleans up any side-effects making sure the next run is fresh.

The images themselves are stored on a Docker registry. The largest registry is [hub.docker.com](https://hub.docker.com), which has tens of thousands of preconfigured applications. As part of your Mayhem install, there is also a *private* Docker registry. The private registry can be used to include your internal images, all within your own network or cloud.

Mayhem can run Docker images stored on either your private registry or Docker Hub. If you are storing your images on your private registry, you will need to specify that in the Mayhemfile.
