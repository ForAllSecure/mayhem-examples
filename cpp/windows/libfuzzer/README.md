## Building Windows C++ LibFuzzer Targets

Run the following to build the Windows libFuzzer target for Mayhem.

```cmd
clang++.exe src\libfuzzer_target.cpp -g -O1 -fsanitize=fuzzer -o fuzz_target_libfuzzer.exe
```

## Creating a Mayhem package

Once you've got your binary built, you can create a Mayhem package like so:

```cmd
mayhem.exe package -o .\cpp-windows-libfuzzer .\fuzz_target_libfuzzer.exe
```

## Executing the Mayhem Run

The `mayhem package` command will create a `Mayhemfile` for you under the `cpp-windows-libfuzzer` directory. You can initiate a Mayhem run like so:

```cmd
mayhem.exe run .\cpp-windows-libfuzzer --project mayhem-examples --target cpp-windows-libfuzzer --duration 90
```
