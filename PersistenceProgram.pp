{$mode objfpc}{$H+}

program PersistenceProgram;

uses ConsoleTestRunner, TestCase1, Persistence;

var
  A: TTestRunner;
  
begin
  DefaultFormat:= fPlain;
  DefaultRunAllTests:= True;
  A:= TTestRunner.Create(nil);
  try
    A.Initialize;
	A.Run;
  finally
    A.Free;
  end;
end.

