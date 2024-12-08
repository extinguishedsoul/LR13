program lbrtrn13tsk6;
var inputFile, tempFile: TextFile; chsl: array of Real; minIndex, maxIndex, i, schtchk: Integer; minValue, maxValue: Real; inputFilename, tempFilename: string;
begin
  inputFilename := 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\input.txt';
  tempFilename := 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\temp.txt';
  AssignFile(inputFile, inputFilename);
  Reset(inputFile);
  schtchk := 0;
  while not Eof(inputFile) do
  begin
    SetLength(chsl, schtchk + 1);
    ReadLn(inputFile, chsl[schtchk]);
    Inc(schtchk);
  end;
  CloseFile(inputFile);
  if schtchk = 0 then
  begin
    WriteLn('Файл пуст.');
    Exit;
  end;
  minValue := chsl[0];
  maxValue := chsl[0];
  minIndex := 0;
  maxIndex := 0;
  for i := 1 to schtchk - 1 do
  begin
    if chsl[i] < minValue then
    begin
      minValue := chsl[i];
      minIndex := i;
    end;
    if numbers[i] > maxValue then
    begin
      maxValue := chsl[i];
      maxIndex := i;
    end;
  end;
  AssignFile(tempFile, tempFilename);
  Rewrite(tempFile);
  for i := 0 to schtchk - 1 do
  begin
    if i = minIndex then
      WriteLn(tempFile, maxValue) 
    else if i = maxIndex then
      WriteLn(tempFile, minValue)  
    else
      WriteLn(tempFile, numbers[i]); 
  end;
  CloseFile(tempFile);
  Erase(inputFile);
  Rename(tempFile, inputFilename);
  WriteLn('Минимальный и максимальный элементы были успешно заменены.');
end.