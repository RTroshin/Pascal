{ Задание №2 }
{ Составьте программу для представления двумерного массива, чтобы элементы 
  размещались по виду:

  1 0 0 0  0 0 0 1  1 0 0 0
  0 1 0 0  0 0 1 0  1 1 0 0
  0 0 1 0  0 1 0 0  1 1 1 0
  0 0 0 1  1 0 0 0  1 1 1 1
}

program MultiArray;

const M = 4; N = 4; { Константы для размерности массива }

var A: array[1..M, 1..N] of integer;
    B: array[1..M, 1..N] of integer;
    C: array[1..M, 1..N] of integer;
    number, i, j, k, count: integer;
Begin
  writeln('Двумерный массив с элементами главной диагонали:');
  writeln;
  for i := 1 to M do
    for j := 1 to N do
      if (i = j) then
        A[i, j] := 1
      else
        A[i, j] := 0;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(A[i, j], ' ');
    writeln;
  end;
  writeln;
  writeln('Двумерный массив с элементами побочной диагонали:');
  writeln;
  for i := 1 to M do
    for j := 1 to N do
      if (i = N + 1 - j) then
        B[i, j] := 1
      else
        B[i, j] := 0;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(B[i, j], ' ');
    writeln;
  end;  
  writeln;
  writeln('Двумерный массив с элементами главной диагонали и элементами под ней:');
  writeln;
  for i := 1 to M do
    for j := 1 to N do
      if (i >= j) then
        C[i, j] := 1
      else
        C[i, j] := 0;
  for i := 1 to M do
  begin
    for j := 1 to N do
      write(C[i, j], ' ');
    writeln;
  end;    
  readln;
end.