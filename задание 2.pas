program z2;
const
N = 20;
MIN_VALUE = -22;
MAX_VALUE = 93;

var
arr: array[1..n] of integer;
i, evenCount, sum, product, startInterval, endInterval: integer;

begin
// Заполняем массив случайными числами
Randomize;
for i := 1 to N do
arr[i] := Random(MAX_VALUE - MIN_VALUE + 1) + MIN_VALUE;

// Определяем количество четных элементов на нечетных местах массива
evenCount := 0;
for i := 1 to N do
begin
if (i mod 2 <> 0) and (arr[i] mod 2 = 0) then
evenCount := evenCount + 1;
end;

// Вычисляем произведение нечетных элементов массива
product := 1;
for i := 1 to N do
begin
if arr[i] mod 2 <> 0 then
product := product * arr[i];
end;

// Вводим промежуток
Write('Введите начало промежутка: ');
ReadLn(startInterval);
Write('Введите конец промежутка: ');
ReadLn(endInterval);

// Вычисляем сумму элементов массива, принадлежащих заданному промежутку
sum := 0;
for i := 1 to N do
begin
if (arr[i] >= startInterval) and (arr[i] <= endInterval) then
sum := sum + arr[i];
end;

// Выводим результаты
WriteLn('Количество четных элементов на нечетных местах: ', evenCount);
WriteLn('Произведение нечетных элементов массива: ', product);
WriteLn('Сумма элементов массива в заданном промежутке: ', sum);

ReadLn;
end.