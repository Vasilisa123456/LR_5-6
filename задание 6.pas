program z6;
var
arr: array[1..10] of integer;
i: integer;
isSorted: boolean;
begin
writeln('Введите элементы массива:');
for i := 1 to 10 do
begin
write('arr[', i, '] = ');
readln(arr[i]);
end;

isSorted := true;
for i := 2 to 10 do
begin
if arr[i] < arr[i-1] then
begin
isSorted := false;
break;
end;
end;

if isSorted then
writeln('Элементы массива упорядочены по возрастанию')
else
writeln('Элементы массива не упорядочены по возрастанию');

readln;
end.