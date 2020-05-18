{ Задание: найти и вывести максимальный элемент в массиве }

program MaximumElement;

const N = 5; { Константа для размерности массива }

var A: array[1..N] of integer;
    i, maxElement, maxIndex: integer;
Begin
  randomize;
  write('Исходный массив: ');
  for i := 1 to N do
  begin
    A[i] := random(100) + 1;
    write(A[i], ' ');
  end;
  maxElement := A[1];
  maxIndex := 1;
  for i := 2 to N do
  begin
    if (A[i] > maxElement) then
    begin  
      maxElement := A[i];
      maxIndex := i;
    end;
  end;
  writeln;
  writeln;
  writeln('Максимальный элемент в массиве: ', maxElement);
  writeln('Позиция максимального элемента в массиве: ', maxIndex);
  readln;
end.