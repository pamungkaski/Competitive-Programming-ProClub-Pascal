//: http://codeforces.com/problemset/problem/758/D
program lul;
uses sysutils;
var
	intDum,j,temp,lenInt,n,ans:int64;
	i:longint;
	tmp,dummy,k:ansistring;
	base : array[0..1000] of longint;
function pangkat(Num,Powe:longint):int64;
	var
		hasil:int64;
		y:longint;
	begin
		hasil:=1;
		if powe = 0 then 
			pangkat:=1
		else begin
			for y:= 1 to Powe do
				hasil:= hasil*Num;
			pangkat:=hasil;
		end;
	end;
begin
	readln(n);
	readln(k);
	str(n,tmp);
	lenInt := length(tmp);
	j:=0;
	ans:=0;
	//writeln(k);
	while (length(k)<>0) do begin
		dummy := '';
		if length(k)>= lenInt then
			for	i:= (length(k)-lenInt)+1 to length(k) do 
				dummy := dummy+k[i]
		else 
			dummy:=k;
		//remove leading zero
		val(dummy,temp);
		str(temp,dummy);
		//
		val(dummy,intDum);
		//writeln(dummy,';',j,';',intDum);
		if intDum >= n then begin
			tmp := '';
			for i:= 2 to length(dummy) do
				tmp := tmp + dummy[i];
			//remove leading zero
			val(tmp,temp);
			str(temp,tmp);
			//
			delete(k,((length(k)-length(tmp))+1),length(tmp));
			dummy := tmp;
			val(dummy,intDum);
		//	writeln(dummy,';',tmp);
		end
		else begin
			delete(k,((length(k)-length(dummy))+1),length(dummy));
		//	writeln(k);
		//	writeln(dummy,';');
		end;
		base[j]:= intDum;
		//writeln(base[j],'base',intDum);
		inc(j);
	end;
	for i:= 0 to j do
		ans:= ans+ (base[i]*(pangkat(n,i)));
	writeln(ans);
end.




