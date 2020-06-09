{ Задание №2 }
{ Составить программу со вспомогательным алгоритмом - функция }

program FactorialFunction;

var n: integer;
function factorial(n: integer): longint;
begin
  if n = 0 then
    factorial := 1
  else
    factorial := n * factorial(n - 1)
end;

Begin
  while true do
  begin
    write('Введите число n: ');
    readln(n);
    if n < 0 then
      writeln('Факториала не существует!')
    else
      writeln(n, '! = ', factorial(n));
    writeln;
  end;
end.