﻿{ Задание на работу со строками }
{ Ввод: имя и фамилия }
{ Вывод: фамилия(пробел)имя }

program InputName;  
var a, b: string;
Begin
  write('Введите имя: '); { Вывод строки с подсказкой }
  readln(a); { Считывание данных }
  write('Введите фамилию: ');
  readln(b);
  write('Фамилия и имя: ' + b + ' ' + a);
  readln;
end.