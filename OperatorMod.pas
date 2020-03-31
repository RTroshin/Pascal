{ Операция mod }

program OperatorMod;
var n, i: integer;
Begin
  write('Введите число n: ');
  readln(n);
  for i := 1 to n do
    if n mod i = 0 then
      write(i, ' ');
  readln;
end.