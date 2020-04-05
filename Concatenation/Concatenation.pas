{ Задание №2 }
{ Провести конкатенацию строк имени и фамилии }

program Concatenation;
var str1, str2, str3: string;
Begin
  write('Введите имя: ');
  readln(str1);
  write('Введите фамилию: ');
  readln(str2);
  str3 := Concat(str1, ' ', str2);
  writeln('-> ' + str3);
  writeln(str2 + ' ' + str1 + ' <-');
  readln;
end.
