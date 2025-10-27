# Windows Base Executable Fuzzing Examples

This directory contains examples of fuzzing Windows base executables using various compilers and configurations. To run, simply navigate to a given directory and follow the instructions in the README files.

## Fuzzing Support with Mayhem

| Compiler               | Architecture | Binary    | Sanitizers         |
|------------------------|--------------|-----------|--------------------|
| MSVC 2022 (cl.exe v19) | x32/x64      | Supported | Failing            |
| clang 10+ (MSVC)       | x32/x64      | Supported | Failing            |
| clang 10+ (libfuzzer)  | x32/x64      | Supported | Failing            |
| gcc 12.4 (cygwin)      | x32/x64      | Failing   | Failing            |
| gcc 15.1 (mingw)       | x32/x64      | Supported | N/A. Linking fails |

**clang8 and cygwin**: cygwin installs clang8, which does not support 
`libfuzzer` or `ASAN`.  To use `libfuzzer` or `ASAN`, you need to install:
    * clang 10+ 
	* built with the `libclang_rt` library.

MSVC will install a supported version of clang, and you can also install
from the [GitHub release page](https://github.com/llvm/llvm-project/releases)

## Windows Behaviors

Windows behaviors are different than Linux. In Linux, `assert` and `abort`
crash with a signal, but in Windows they are silently wrapped. Note that `assert` prints a message and then immediately calls `abort()`, so the behavior is similar. Also, note that compiling for release mode may remove `assert()` calls entirely.

| Case                            | Linux Behavior         | Windows MSVC Default        | Supported | 
|---------------------------------|------------------------|-----------------------------|-----------|
| `abort()`                       | Raises signal, exits   | Shows dialog, exits code 3  | No        |
| `assert()`                      | Raises SIGABRT         | May no-op in release        | No        |
| `throw std::runtime_error`      | Uncaught → terminate() | Exits silently (code 1/3)   | Yes	     |
| Null pointer dereference        | Crashes                | Crashes                     | Yes       | 
| OOB heap write (with ASAN)      | Detected by ASAN       | Detected by ASAN (Clang)    | No        | 
| `RaiseFailFastException()`      | Not applicable         | Crashes with fast fail      | No        | 

_Note: You can get Mayhem to recognize `assert` and `abort` as crashes by setting the environment variable `AFL_CRASH_EXITCODE` to `3` in your Mayhemfile, as this is the exit code Windows raises when an `abort()` is called._