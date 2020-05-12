{ Задание: найти и вывести максимальный элемент в массиве }

program MaximumElement;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, max: integer;
Begin
  randomize;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  max := A[1];
  for i := 1 to N do
  begin
    if (A[i] > max) then
      max := A[i];
  end;
  writeln;
  writeln('Максимальный элемент в массиве: ', max);
  readln;
end.