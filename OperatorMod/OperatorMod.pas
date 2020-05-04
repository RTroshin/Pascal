{ Операция mod }

program OperatorMod;
var n, i: integer;
Begin
  writeln('Введите натуральное число n: ');
  readln(n);
  writeln;
  writeln('Все делители числа от 1 до ', n, ':');  
  for i := 1 to n do
    if n mod i = 0 then
      write(i, ' ');
  readln;
end.