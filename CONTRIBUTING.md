# How do I contribute?

All targets are broken down by language, OS, fuzzer, and target. The general structure is:

```sh
- <language>
  - <os>
    - <fuzzer>
      - <target>
        - testsuite
        - src
        - Dockerfile
        - Mayhemfile
        - README.md
```

## Linux Targets

All Linux targets should be able to be built and pushed using the following commands:

> **Note:** You should first navigate to the corresponding target directory before executing the below commands.

```sh
docker build -t $MAYHEM_DOCKER_REGISTRY/forallsecure/<target_name> .
docker push $MAYHEM_DOCKER_REGISTRY/forallsecure/<target_name>
```

The docker `ENTRYPOINT` for all target examples should be empty `[]`, unless local testing is desired. For example, the [c-afl-gcc](/c/afl/c-afl-gcc/Dockerfile) target sets the `ENTRYPOINT` to use the `afl-fuzz` utility to fuzz the containerized binary when the `c-afl-gcc` Docker image is run. The `CMD` for every dockerfile should be the command that is expected to be passed to the fuzzer.

All examples should expose a defect in the underlying language. We have been using either a divide-by-zero or `SIGABRT` bug in most cases but if this is not possible (for example the compiler optimizes the `1/0` bug away), then let us know and we can help! In terms of code structure, all examples look as follows (pseudocode):

```sh
if input[0] == "b"
  if input[1] == "u"
    if input[2] == "g"
      x = 1 / 0;
```

OR

```sh
if input[0] == "b"
  if input[1] == "u"
    if input[2] == "g"
      abort();
```

You can also use the included `Makefile` at the root of the `mayhem-examples` repository to automatically build and push all images using the `make build` and `make push` commands, respectively.

## Windows Targets

For Windows targets, the structure is similar, but the build and packaging process is different. Namely, you will not use a Dockerfile or Mayhemfile, and will compile the target directly using the appropriate compiler for the language (e.g., `csc.exe` for C# or `clang++.exe` for C++). You can find more examples under the (`base-executable/windows/README.md`)[base-executable/windows/README.md] and [cpp/windows/libfuzzer/README.md](cpp/windows/libfuzzer/README.md) directories.

Be sure to include a `README.md` as well.