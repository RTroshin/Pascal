{ Ввод и вывод одномерного массива }

program ArrayInput;

const N = 5; { Константа для размерности массива }

var A: array[1..5] of integer;
    i, number: integer;
Begin
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    readln(number);
    A[i] := number;
  end;
  writeln;
  writeln('Введенный массив:');
  for i := 1 to N do
    write(A[i], ' ');
  readln;
end.
