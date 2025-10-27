## Building Windows C++ Targets

Run the following to build the Windows C++ GCC target for Mayhem.

```cmd
g++.exe src\fuzz_target.cpp -g -O1 -o fuzz_target_mingw.exe
```

## Creating a Mayhem package

Once you've got your binary built, you can create a Mayhem package like so:

```cmd
mayhem.exe package -o .\cpp-windows-base-executable-gcc .\fuzz_target_mingw.exe
```

## Executing the Mayhem Run

The `mayhem package` command will create a `Mayhemfile` for you under the `cpp-windows-base-executable-gcc` directory. You can initiate a Mayhem run like so:

```cmd
mayhem.exe run .\cpp-windows-base-executable-gcc --project mayhem-examples --target cpp-windows-base-executable-gcc --duration 90
```