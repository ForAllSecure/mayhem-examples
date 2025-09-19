using System;
using System.IO;
using SharpFuzz;

namespace Fuzzme {
  public static class Fuzzme {
    public static void Func(ReadOnlySpan<byte> data) {
      if (data.Length < 4) {
         return;
      }
      if (data[0] == 'b') {
        if (data[1] == 'u') {
          if (data[2] == 'g') {
            throw new Exception("Made it to the bug!");
          }
        }
      }
    }
  }

  class Program {
    static void Main(string[] args) {
      Fuzzer.LibFuzzer.Run(data => { Fuzzme.Func(data); });
    }
  }
}
