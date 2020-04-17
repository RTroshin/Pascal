{ Задание №5 }
{ Создать программу для создания реверса (перестановка элементов)в массиве }

program ReverseArray;
var A: array[1..10] of integer;
    i, temp: integer;
Begin
  writeln('Массив в прямом порядке:');
  for i := 1 to 10 do
  begin
    A[i] := i;
    write(A[i], ' ');
  end;
  writeln;
  writeln('Массив в обратном порядке:');
  for i := 1 to 10 div 2 do
  begin
    temp := A[i];
    A[i] := A[10 + 1 - i];
    A[10 + 1 - i] := temp;
  end;
  for i := 1 to 10 do
    write(A[i], ' ');
  readln;
end.
