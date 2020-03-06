{ Задание №2 }
{ Вычислить гипотенузу и площадь прямоугольного треугольника (значение катетов
  вводить с клавиатуры) }

var a, b: integer;
    c, S: real;
    // stop: boolean;
    stop: integer;
Begin
  repeat
    write('Введите катеты A и B: ');
    readln(a, b);
    c := sqrt(a * a + b * b);
    writeln('Гипотенуза C = ', c);
    S := (a * b) / 2; { Вычисление площади треугольника }
    writeln('Площадь треугольника = ', S);
    writeln;
    writeln('Хотите выйти из программы?');
    write('Если нет, введите 1. Если да, введите 0: ');
    read(stop);
    writeln;
  // until stop := false;
  until stop = 0;
end.