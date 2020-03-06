{ Вычисление факториала }

var
  n, i, fact: integer;
Begin
  write('Введите число: ');
  read(n);
  if (n = 0) then
  begin
    write(n);
    exit;
  end;
  fact := 1;
  for i := 1 to n do
    fact := fact * i;
  writeln(n, '! = ', fact);
end.