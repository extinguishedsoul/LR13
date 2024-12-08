var inputFile, outputFile: Text; currentChar: Char; fileContent: string; lastSpacePos: Integer;
begin
  Assign(inputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\input.txt  ');
  Assign(outputFile, 'C:\Users\ileof\OneDrive\Рабочий стол\lbrtrn13\output.txt');
  Reset(inputFile);
  Rewrite(outputFile);
  fileContent := '';
  while not Eof(inputFile) do
  begin
    Read(inputFile, currentChar);
    fileContent := fileContent + currentChar;
  end;
  lastSpacePos := LastPos(' ', fileContent  );
  if lastSpacePos > 0 then
    fileContent := Copy(fileContent, 1, lastSpacePos - 1);
  Write(outputFile, fileContent);
  Close(inputFile);
  Close(outputFile);
  Writeln('Изменения завершены. Проверьте файл output.txt.');
end.
