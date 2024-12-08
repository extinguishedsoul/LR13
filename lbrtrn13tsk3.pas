program lbrtrn13tsk3;
var inputFile, nchtnFile, chtnFile: Text; tkshnmr: Real; smvl: Integer;
begin
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\input.txt');
  Reset(inputFile);
  Assign(nchtnFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\nchtn.txt');
  Rewrite(nchtnFile);
  Assign(chtnFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\chtn.txt');
  Rewrite(chtnFile);
  smvl := 1;
  while not Eof(inputFile) do
  begin
    Readln(inputFile, tkshnmr);
    if smvl mod 2 <> 0 then
      Writeln(nchtnFile, tkshnmr)
    else
      Writeln(chtnFile, tkshnmr);
    Inc(smvl);
  end;
  Close(inputFile);
  Close(nchtnFile);
  Close(chtnFile);
  Writeln('Готово');
end.
