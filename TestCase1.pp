{$mode objfpc}{$H+}

unit TestCase1;

interface

uses FPCUnit, TestRegistry, TestUtils, Persistence;

type
  TTestCase1 = class(TTestCase)
  private
    FPersistence: TPersistence;
  protected
    procedure SetUp; override;
	procedure TearDown; override;
  published
    procedure FirstTest;
  end;
  
implementation

procedure TTestCase1.SetUp;
begin
  FPersistence:= TPersistence.Create;
end;

procedure TTestCase1.TearDown;
begin
  FPersistence.Free;
end;

procedure TTestCase1.FirstTest;
begin
  AssertEquals(0, FPersistence.Persistence(5));
end;

initialization
  RegisterTest(TTestCase1);
end.
    
