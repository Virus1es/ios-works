/*
Задание 6

Реализуйте функцию, которая определяет, является ли число простым.

Используя данную функцию, выведите в консоль все простые числа в диапазоне от 1 до 20.
*/

func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    if number == 2 { return true }
    if number % 2 == 0 { return false }
    
    var divisor = 3
    while divisor * divisor <= number {
        if number % divisor == 0 { return false }
        divisor += 2
    }
    return true
}

print("Простые числа от 1 до 20:")
var primes: [Int] = []
for i in 1...20 {
    if isPrime(i) {
        primes.append(i)
    }
}
print(primes.map(String.init).joined(separator: ", "))