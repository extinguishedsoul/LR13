var inputFile, outputFile: Text; currentLine: string; maxLength, i: Integer; lines: array of string;
begin
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\input.txt');
  Assign(outputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\output.txt');
  Reset(inputFile);
  Rewrite(outputFile);
  maxLength := 0;
  while not Eof(inputFile) do
  begin
    Readln(inputFile, currentLine);
    if Length(currentLine) > maxLength then
      maxLength := Length(currentLine);
  end;
  Reset(inputFile);
  SetLength(lines, 0);
  while not Eof(inputFile) do
  begin
    Readln(inputFile, currentLine);
    if Length(currentLine) = maxLength then
    begin
      SetLength(lines, Length(lines) + 1);
      lines[High(lines)] := currentLine;
    end;
  end;
  for i := High(lines) downto 0 do
    Writeln(outputFile, lines[i]);
  Close(inputFile);
  Close(outputFile);
  Writeln('Новый файл создан. Проверьте файл output.txt.');
end.
