{ Задание №4 }
{ Создать программу для создания реверса (перестановка элементов)в массиве }

program ReverseArray;

const N = 10; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, temp: integer;
Begin
  writeln('Массив в прямом порядке:');
  for i := 1 to N do
  begin
    A[i] := i;
    write(A[i], ' ');
  end;
  writeln;
  writeln('Массив в обратном порядке:');
  for i := 1 to N div 2 do
  begin
    temp := A[i];
    A[i] := A[N + 1 - i];
    A[N + 1 - i] := temp;
  end;
  for i := 1 to N do
    write(A[i], ' ');
  readln;
end.