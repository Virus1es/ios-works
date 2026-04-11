/*
Задание 2

Дан массив целых чисел. Необходимо выполнить анализ его содержимого.

Требуется определить:
 • количество положительных чисел;
 • количество отрицательных чисел;
 • количество нулевых значений;
 • максимальное значение в массиве;
 • сумму всех элементов.

Результаты анализа необходимо вывести в консоль.

*/


let numbers = [15, -3, 0, 8, -12, 0, 42, -7, 1, 0]

var positiveCount = 0
var negativeCount = 0
var zeroCount = 0
var maxValue: Int = Int.min
var totalSum = 0

for num in numbers {
    if num > 0 { positiveCount += 1 }
}

for num in numbers {
    if num < 0 { negativeCount += 1 }
}

for num in numbers {
    if num == 0 { zeroCount += 1 }
}

for num in numbers {
    if num > maxValue { maxValue = num }
}

for num in numbers {
    totalSum += num
}


print("Анализ массива \(numbers):")
print("Положительных: \(positiveCount)")
print("Отрицательных: \(negativeCount)")
print("Нулевых: \(zeroCount)")
print("Максимум: \(numbers.isEmpty ? "массив пуст" : "\(maxValue)")")
print("Сумма: \(totalSum)")