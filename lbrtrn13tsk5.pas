program LastLocalMax;
var f: Text; chsl: array of Real; i, n: Integer; psldnmx: Real; chtn: Real;
begin
 Assign(f, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\input.txt');
 Reset(f);
 n := 0;
 while not Eof(f) do
 begin
    Readln(f, chtn);
    SetLength(chsl, n + 1); 
    chsl[n] := chtn; 
    Inc(n);
  end;
  Close(f);
  if n < 3 then
  begin
    Writeln('Локальных максимумов нет.');
    Exit;
  end;
  for i := 1 to n - 2 do
  begin
    if (chsl[i] > chsl[i - 1]) and (chsl[i] > chsl[i + 1]) then
    begin
      psldnmx := chsl[i];
    end;
  end;
  if psldnmx <> -1 then
    Writeln('Последний локальный максимум: ', psldnmx)
  else  
    Writeln('Локальных максимумов нет.');
end.
