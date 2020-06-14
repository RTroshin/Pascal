{ Задание №2 }
{ Составить программу со вспомогательным алгоритмом - функция }

program FactorialFunction;

function factorial(n: integer): longint;
begin
  if n = 0 then
    factorial := 1
  else
    factorial := n * factorial(n - 1)
end;

var n: integer;
Begin
  repeat
    write('Введите число n: ');
    readln(n);
    if n > 0 then
      writeln(n, '! = ', factorial(n))
    else
      writeln('Факториала не существует!');
    writeln;
  until false;
end.