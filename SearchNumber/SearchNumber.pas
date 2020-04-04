{ Программа поиска первой цифры в числе n }

program SearchNumber;
var n, count, answer: integer;
Begin
  count := 0;
  write('Введите число n: ');
  readln(n);
  answer := n;
  repeat { Первый цикл определяет общее количество цифр в числе }
    n := n div 10;
    inc(count);
  until (n = 0);
  if (count >= 2) then
  begin
    repeat { Второй цикл определяет первую цифру в числе }
      answer := answer div 10;
      dec(count);
    until (count = 1);
    writeln(answer);
  end
  else
    writeln(answer);
  readln;
end.
