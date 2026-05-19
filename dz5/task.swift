/*
first(where:) 
последовательно проверяет элементы коллекции с помощью переданного замыкания-предиката. 
Как только замыкание возвращает true, метод мгновенно останавливает перебор и возвращает 
найденный элемент. Если ни один элемент не подошёл, возвращается nil. Это экономит время 
и память по сравнению с filter.
*/

// Встроенный метод
let temps = [18, 22, 25, 19, 30, 28]
let builtIn = temps.first { $0 > 24 }
print("Встроенный first(where:): \(builtIn ?? -1)°C\n")

// Кастомная реализация
func myFirstWhere(_ array: [Int], predicate: (Int) -> Bool) -> Int? {
    for element in array {
        if predicate(element) {
            return element
        }
    }
    return nil
}

// Тест с демонстрацией захвата переменных и раннего выхода
var checks = 0
let custom = myFirstWhere(temps) { temp in
    checks += 1
    print("Шаг \(checks): проверяем \(temp)")
    return temp > 24
}

print("\nКастомный результат: \(custom ?? -1)°C")
print("Итераций выполнено: \(checks)")