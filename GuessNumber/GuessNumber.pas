{ Программа "Угадай число" }

program GuessNumber;
var a, b: integer;
Begin
  randomize;
  a := random(100);
  while a <> b do
  begin
    write('Введите число: ');
    readln(b);
    if b > a then
      writeln('Много')
    else
      if b < a then
        writeln('Мало')
      else
        writeln('Поздравляю! Вы угадали!');
  end;
  readln
end.
