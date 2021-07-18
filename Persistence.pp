{$mode objfpc}{$H+}

unit Persistence;

interface

type
  TPersistence = class
  public
    function Persistence(Num: Integer): Integer;
  end;
  
implementation

function TPersistence.Persistence(Num: Integer): Integer;
begin
  Result:= 0;
end;

end.