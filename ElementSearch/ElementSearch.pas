{ Задание №3 }
{ Создать программу для поиска элемента в массиве }

program ElementSearch;
var A: array[1..5] of integer;
    i, j, number: integer;
Begin
  j := 5;
  write('Введите номер искомого элемента в массиве (от 1 до 5): ');
  readln(number);
  for i := 1 to 5 do
  begin
    A[i] := j;
    write(A[i], ' ');
    dec(j);
  end;
  writeln;
  for i := 1 to 5 do
  begin
    if number = i then
    begin
      writeln('Найденный элемент: ', A[i]);
      break;
    end
  end;
  readln;
end.
