﻿{ Алгоритмическая структура - цикл со счётчиком }

program ForLoop;
var i: char; { Объявление переменной целого типа }
Begin { Начало программы }
  for i := 'a' to 'z' do { Оператор цикла со счётчиком }
    write(i, ' '); { Вывод данных в строку }
    { writeln(i); { Вывод данных в столбец }
  writeln();
  for i := 'A' to 'Z' do { Оператор цикла со счётчиком }
    write(i, ' '); { Вывод данных в строку }
    { writeln(i); { Вывод данных в столбец }
  writeln();
  for i := 'z' downto 'a' do { Оператор цикла со счётчиком }
    write(i, ' '); { Вывод данных в строку }
    { writeln(i); { Вывод данных в столбец }
  writeln(); 
  for i := 'Z' downto 'A' do { Оператор цикла со счётчиком }
    write(i, ' '); { Вывод данных в строку }
    { writeln(i); { Вывод данных в столбец }
  readln();
end. { Конец программы }