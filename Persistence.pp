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
var
  NumberOfTimes: Integer;
  Temp: Integer;
begin
  if Num < 0 then
    Num:= Num * -1;

  NumberOfTimes:= 0;
  while Num > 9 do
  begin
    Temp:= 1;
	while Num > 0 do
	begin
	  Temp:= Temp * (Num mod 10);
	  Num:= Num div 10;
	end;
	Num:= Temp;
	NumberOfTimes:= NumberOfTimes + 1;
  end;
  Result:= NumberOfTimes;
end;

end.