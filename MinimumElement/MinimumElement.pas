{ Задание: найти и вывести минимальный элемент в массиве }

program MinimumElement;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, minElement, minIndex: integer;
Begin
  randomize;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  minElement := A[1];
  minIndex := 1;
  for i := 2 to N do
  begin
    if (A[i] < minElement) then
    begin  
      minElement := A[i];
      minIndex := i;
    end;
  end;
  writeln;
  writeln;
  writeln('Минимальный элемент в массиве: ', minElement);
  writeln('Позиция минимального элемента в массиве: ', minIndex);
  readln;
end.