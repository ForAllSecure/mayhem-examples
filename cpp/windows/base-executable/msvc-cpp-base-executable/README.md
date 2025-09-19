## Building Windows C++ Targets

Run the following to build the Windows C++ MSVC target for Mayhem.

```cmd
cl.exe src\fuzz_target.cpp /nologo /Zi /FS /MDd /EHsc /Fo: "fuzz_target_msvc.obj" /Fe: "fuzz_target_msvc.exe"
```

## Creating a Mayhem package

Once you've got your binary built, you can create a Mayhem package like so:

```cmd
mayhem.exe package -o .\cpp-windows-base-executable-msvc .\fuzz_target_msvc.exe
```

## Executing the Mayhem Run

The `mayhem package` command will create a `Mayhemfile` for you under the `cpp-windows-base-executable-msvc` directory. You can initiate a Mayhem run like so:

```cmd
mayhem.exe run .\cpp-windows-base-executable-msvc --project mayhem-examples --target cpp-windows-base-executable-msvc --duration 90
```