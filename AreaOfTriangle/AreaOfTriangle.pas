{ Задание №2 }
{ Вычислить гипотенузу и площадь прямоугольного треугольника (значение катетов
  вводить с клавиатуры) }

program AreaOfTriangle;
var a, b: integer;
    c, S: real;
    // stop: boolean;
    stop: integer;
Begin
  // stop := false;
  stop := 0;
  repeat
    write('Введите катеты A и B: ');
    readln(a, b);
    c := sqrt(a * a + b * b);
    writeln('Гипотенуза C = ', c);
    S := (a * b) / 2; { Вычисление площади треугольника }
    writeln('Площадь треугольника = ', S);
    writeln;
    writeln('Хотите выйти из программы?');
    write('Если нет, введите 0. Если да, введите 1: ');
    readln(stop);
    writeln;
  // until stop := true;
  until stop = 1;
end.
