program z1;
var
arr: array[1..20] of integer;
i: integer;
begin
// Заполнение массива с клавиатуры
for i := 1 to 20 do
begin
write('Введите элемент массива ', i, ': ');
readln(arr[i]);
end;

// Замена положительных элементов на 0 и возведение отрицательных элементов в квадрат
for i := 1 to 20 do
begin
if arr[i] > 0 then
arr[i] := 0
else if arr[i] < 0 then
arr[i] := arr[i] * arr[i];
end;

// Вывод измененного массива на экран
writeln('Измененный массив:');
for i := 1 to 20 do
write(arr[i], ' ');

readln;
end.