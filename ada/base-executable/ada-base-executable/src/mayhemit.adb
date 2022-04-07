with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line;
with Ada.Assertions;
with GNAT.Exception_Actions;

procedure Mayhemit is
  Length : Integer := 3;
  Input : String (1 .. Length);
  Fd : File_Type;
  Filename : aliased String := Ada.Command_Line.Argument(1);
  procedure FuzzTest (Input : String) is
    Zero : Integer := 0;
    One : Integer := 1;
    Answer : Integer := 0;
  begin
    if Input (Input'First .. Input'First) = "b" then
      if Input (Input'First + 1 .. Input'First + 1) = "u" then
        if Input (Input'First + 2 .. Input'First + 2) = "g" then
          raise Ada.Assertions.Assertion_Error;
          -- Answer := One / Zero;
        end if;
      end if;
    end if;
  end FuzzTest;
begin

  Open (File => Fd,
        Mode => In_File,
        Name => Filename);
  Get_Line (Fd, Input, Length);
  FuzzTest(Input);

exception
  when Occurence : others  =>
     GNAT.Exception_Actions.Core_Dump (Occurence);
end Mayhemit;

