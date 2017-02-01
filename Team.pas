//http://codeforces.com/problemset/problem/231/A
program lul;
var
	n,i,a,b,c,ans:integer;
begin
	readln(n);
	ans:=0;
	for i:= 1 to n do begin 
		read(a,b,c);
		if (a+b+c)>=2 then
			inc(ans);
	end;
	writeln(ans);
end.
