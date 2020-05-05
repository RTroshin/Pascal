{ Задание №2 }
{ Составить программу для определения дней недели.
  Например, при вводе с клавиатуры цифры 1, программа выводит слово "понедельник" }

program DayNumber;
var day_Number: char;
    day: string;
    stop: boolean;
Begin
  stop := false;
  repeat
    write('Введите цифру от 1 до 7: '); { Вывод строки с подсказкой }
    readln(day_Number); { Считывание данных }
    case day_Number of
      '1': day := 'Понедельник';
      '2': day := 'Вторник';
      '3': day := 'Среда';
      '4': day := 'Четверг';
      '5': day := 'Пятница';
      '6': day := 'Суббота';
      '7': day := 'Воскресенье';
    else
    begin
      day := ('Вы ввели цифру вне диапазона!');
    end;
    end;
    writeln(day);
  until stop = true;
end.