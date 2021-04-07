# How do I contribute?

All targets are broken down by language and underlying fuzzer.
The general structure is:

```
  - <language>-<fuzzer>
    - Dockerfile
```

All targets should be buildable through:

```
docker build -t <language>-<fuzzer> ./<language-fuzzer>
```

The docker ENTRYPOINT for all fuzzmes must be empty `[]`. The `CMD`
for every dockerfile should be the command that is expected to be
passed to the fuzzer.


All examples should expose a defect in the underlying language.
We have been using a division-by-zero example in most cases but
if this is not possible in your language / fuzzer we should be
able to special case it! Just let us know. In terms of code
structure, all examples look as follows (pseudocode):

```
  if input[0] == "b"
    if input[1] == "u"
      if input[2] == "g"
        x = 1 / 0
```

The image should be buildable by running `make build` and pushable
by running `make push`.
