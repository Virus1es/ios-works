// Встроенный метод
let numbers = [2, 4, 6, 8]
let builtIn = numbers.reduce(1) { $0 * $1 }
print("Встроенный: \(builtIn)")

// Собственная реализация
func myReduceInt(_ array: [Int], _ initial: Int, _ combine: (Int, Int) -> Int) -> Int {
    var accumulator = initial
    for element in array {
        accumulator = combine(accumulator, element)
    }
    return accumulator
}

// Тест кастомной функции
let custom = myReduceInt(numbers, 1) { acc, val in acc * val }
print("Кастомный: \(custom)")
