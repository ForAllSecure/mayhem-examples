# Ada Examples
Mayhem supports Ada programs, and can help you check for
vulnerabilities and errors before they hit production.

To use Mayhem:
  1. Include an exception handler that raises a UNIX signal on error,
  such as:
  ```ada
  when Occurence : others  =>
     GNAT.Exception_Actions.Core_Dump (Occurence);
  ```
 2. (optional) Create an initial set of test cases. This step will
    reduce the time Mayhem spends inferring the initial test cases.
 3. Run Mayhem on the compiled binary with the optional test cases.


AdaCore's commercial [GNATfuzz
tool](https://www.adacore.com/dynamic-analysis/gnatfuzz "GNATfuzz")
helps automate step (1) and (2) saving you significant time.  GNATfuzz
uses program analysis to automatically infer target functions to fuzz,
create an initial test corpus, and generate any needed wrappers needed
for fuzzing. 

