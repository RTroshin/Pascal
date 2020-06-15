{ Задание №2 }
{ Составить программу со вспомогательным алгоритмом - функция }

program FactorialFunction;

function factorial(N: integer): longint;
begin
  if N = 0 then
    factorial := 1
  else
    factorial := N * factorial(N - 1)
end;

var N: integer;
Begin
  repeat
    write('Введите число N: ');
    readln(N);
    if N > 0 then
      writeln(N, '! = ', factorial(N))
    else
      writeln('Факториала не существует!');
    writeln;
  until false;
end.