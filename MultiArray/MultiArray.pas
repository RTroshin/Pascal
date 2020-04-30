{ Задание №2 }
{ Составьте программу для представления двумерного массива, чтобы элементы 
  размещались по виду:

  1  0  0  0   0  0  0  1   1  0  0  0
  0  1  0  0   0  0  1  0   1  1  0  0
  0  0  1  0   0  1  0  0   1  1  1  0
  0  0  0  1   1  0  0  0   1  1  1  1
}

program MultiArray;

const M = 4; N = 4; { Константы для размерности массива }

var A: array[1..M, 1..N] of integer;
    B: array[1..M, 1..N] of integer;
    C: array[1..M, 1..N] of integer;
    number, i, j, k, count: integer;
Begin
  
  { Заполняем массивы нулями }
  
  for i := 1 to M do
    for j := 1 to N do
    begin
      A[i, j] := 0;
      B[i, j] := 0;
      C[i, j] := 0;
    end;

  writeln('Двумерный массив с элементами главной диагонали:');
  writeln;
  for i := 1 to M do
    A[i, i] := 1;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(A[i, j]:3);
    writeln;
  end;
  writeln;
  
  writeln('Двумерный массив с элементами побочной диагонали:');
  writeln;
  for i := 1 to M do
    B[i, N + 1 - i] := 1;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(B[i, j]:3);
    writeln;
  end;  
  writeln;

  writeln('Двумерный массив с элементами главной диагонали и элементами под ней:');
  writeln;
  for i := 1 to M do
    for j := 1 to i do
      C[i, j] := 1;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(C[i, j]:3);
    writeln;
  end;    
  readln;
end.