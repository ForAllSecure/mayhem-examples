using System;
using System.IO;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace DotnetFuzz
{
    public static class DotnetFuzz
    {
        [DllImport("kernel32.dll")]
        public static extern void RaiseFailFastException(IntPtr pExceptionRecord, IntPtr pContextRecord, uint dwFlags);

        public static void TestAbortBug(string data)
        {
            if (data.StartsWith("bug"))
            {
                Console.WriteLine("Found 'bug' abort corner case!");
                Environment.FailFast("Simulated abort");
            }
        }

        public static void TestNullDerefMom(string data)
        {
            if (data.StartsWith("mom"))
            {
                Console.WriteLine("Found 'mom' null deref corner case!");
                unsafe
                {
                    int* ptr = null;
                    *ptr = 42;
                }
            }
        }

        public static void TestRuntimeErrorDad(string data)
        {
            if (data.StartsWith("dad"))
            {
                Console.WriteLine("Found 'dad' runtime_error corner case!");
                throw new Exception("Simulated runtime error");
            }
        }

        public static void TestAssertCab(string data)
        {
            if (data.StartsWith("cab"))
            {
                Console.WriteLine("Found 'cab' assert corner case!");
                Debug.Assert(false, "Assertion failed for input 'cab'");
            }
        }

        public static void TestRaiseFailFastDog(string data)
        {
            if (data.StartsWith("dog"))
            {
                Console.WriteLine("Found 'dog' RaiseFailFastException!");
                RaiseFailFastException(IntPtr.Zero, IntPtr.Zero, 0);
            }
        }

        public static void TestAddressSanitizerBoo(string data)
        {
            if (data.StartsWith("boo"))
            {
                Console.WriteLine("Found 'boo' address sanitizer corner case!");
                int[] x = new int[100];
                x[100] = 5; // Out of bounds write
            }
        }

        public static void TestAbortSetBehaviorSet(string data)
        {
            if (data.StartsWith("set"))
            {
                Console.WriteLine("Found 'set' FailFast corner case!");
                Environment.FailFast("set_abort_behavior + abort simulation");
            }
        }
    }

    class Program
    {

        static void Main(string[] args)
        {
            if (args.Length < 1)
            {
                Console.Error.WriteLine("Usage: dotnet_fuzz_target <input_file>");
                return;
            }

            string input = File.ReadAllText(args[0]);
            // Console.WriteLine($"Read '{input}' from input file.");

            DotnetFuzz.TestAbortBug(input);
            DotnetFuzz.TestNullDerefMom(input);
            DotnetFuzz.TestRuntimeErrorDad(input);
            DotnetFuzz.TestAssertCab(input);
            DotnetFuzz.TestRaiseFailFastDog(input);
            DotnetFuzz.TestAddressSanitizerBoo(input);
            DotnetFuzz.TestAbortSetBehaviorSet(input);
        }
    }
}
