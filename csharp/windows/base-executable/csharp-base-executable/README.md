## Building Windows C# Targets

Run the following to build the Windows C# target for Mayhem.

```cmd
csc.exe /unsafe /nologo /out:/dotnet_fuzz.exe src\dotnet_fuzz.cs
```

## Creating a Mayhem package

Once you've got your binary built, you can create a Mayhem package like so:

```cmd
mayhem.exe package -o .\csharp-windows-base-executable .\dotnet_fuzz.exe
```

## Executing the Mayhem Run

The `mayhem package` command will create a `Mayhemfile` for you under the `csharp-windows-base-executable` directory. You can initiate a Mayhem run like so:

```cmd
mayhem.exe run .\csharp-windows-base-executable --project mayhem-examples --target csharp-windows-base-executable --duration 90
```
