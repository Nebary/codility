uses SysUtils;

(* you can write to stdout for debugging purposes, e.g. *)
(* WriteLn('this is a debug message');                  *)

function solution(N: longint): longint;
var
    binary: String;
    digit: Integer;
    counter: Integer;
    gap: Integer;
    I: Integer;
begin
    binary := '';
    while (N > 0) do begin
        digit := N mod 2;
        binary := concat(IntToStr(digit), binary);
        N := N div 2;
    end;
    counter := 0;
    gap := 0;
    for I:=1 to Length(binary) do begin
        if binary[I] = '0' then
            counter := counter + 1
        else begin
            if counter > gap then gap := counter;
            counter := 0;
        end;
    end;
    solution := gap;
end;
