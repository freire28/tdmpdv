unit RyCriptografia;

interface

uses
  SysUtils, Classes;

const key = '31415';

function RyEncodeString(const Value: string): string;
function RyDecodeString(const Value: string): string;

implementation

{ TRyCriptografia }

function RyEncodeString(const Value: string): string;
  procedure _Encode(const Key: string; Buf: PChar; Size: Cardinal);
  var
    N: Integer;
    I: Cardinal;
  begin
    if Size > 0 then
    begin
      N := StrToIntDef(Key, 13);
      if (N <= 0) or (N >= 256) then
        N := 13;
      for I := 0 to Size - 1 do
        Buf[I] := Char(Cardinal(Buf[I]) + Cardinal(N));
    end;
  end;
var
  Tmp: PChar;
begin
  GetMem(Tmp, Length(Value) + 1);
  try
    StrPCopy(Tmp, Value);
    _Encode(Key, Tmp, Length(Value));
    SetString(Result, Tmp, Length(Value));
  finally
    FreeMem(Tmp);
  end;
end;

function RyDecodeString(const Value: string): string;
  procedure _Decode(const Key: string; Buf: PChar; Size: Cardinal);
  var
    N: Integer;
    I: Cardinal;
  begin
    if Size > 0 then
    begin
      N := StrToIntDef(Key, 13);
      if (N <= 0) or (N >= 256) then
        N := 13;
      for I := 0 to Size - 1 do
        Buf[I] := Char(Cardinal(Buf[I]) - Cardinal(N));
    end;
  end;
var
  Tmp: PChar;
begin
  GetMem(Tmp, Length(Value) + 1);
  try
    StrPCopy(Tmp, Value);
    _Decode(Key, Tmp, Length(Value));
    SetString(Result, Tmp, Length(Value));
  finally
    FreeMem(Tmp);
  end;
end;

end.
