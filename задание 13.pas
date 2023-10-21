program z13;
var
arr: array[1..20] of Integer;
i, maxIndex, minIndex, temp: Integer;

begin
// Заполняем массив случайными числами
Randomize;
for i := 1 to 20 do
arr[i] := Random(100);

// Находим индексы наибольшего и наименьшего элементов массива
maxIndex := 1;
minIndex := 1;
for i := 2 to 20 do
begin
if arr[i] > arr[maxIndex] then
maxIndex := i;
if arr[i] < arr[minIndex] then
  minIndex := i;
end;

// Меняем местами наибольший и наименьший элементы массива
temp := arr[maxIndex];
arr[maxIndex] := arr[minIndex];
arr[minIndex] := temp;

// Выводим результат
for i := 1 to 20 do
Write(arr[i], ' ')
end.