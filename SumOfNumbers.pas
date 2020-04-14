{ Задание №1 }
{ Составить программу с вспомогательным алгоритмом - функция, для вычисления
  суммы цифры числа }

program SumOfNumbers;

procedure DivideNumber(var n, n1, n2, n3: integer);
begin
  n1 := n div 100;
  n2 := n div 10;
  n2 := n2 mod 10;
  n3 := n mod 10;
end;

var sum, number, number1, number2, number3: integer;
Begin
  write('Введите трехзначное число: ');
  readln(number);
  DivideNumber(number, number1, number2, number3);
  sum := number1 + number2 + number3;
  writeln('Сумма цифр числа: ', sum);
  readln;
end.