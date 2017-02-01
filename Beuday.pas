//https://www.hackerrank.com/challenges/beautiful-days-at-the-movies
program lul;
uses strutils;

var
    ans,q,i,j,k,temp : longint;
    dummy:ansistring;
begin
    readln(i,j,k);
    ans:=0;
    for q:= i to j do begin
        str(q,dummy);
        val(ReverseString(dummy),temp);
        if ((abs(q-temp)) mod k = 0) then
            inc(ans);
    end;
    writeln(ans);
end.
    
    