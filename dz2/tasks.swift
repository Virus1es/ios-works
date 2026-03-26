// 1
// Создайте два множества: setA и setB. setA должен содержать
// числа от 1 до 10, а setB — числа от 5 до 15.

let setA = Set(1...10)
let setB = Set(5...15)

print("setA: \(setA)")
print("setB: \(setB)")

// 2
// Найдите пересечение множеств setA и setB.
// Найдите объединение множеств setA и setB.
// Найдите разность множеств setA и setB.

let intersection = setA.intersection(setB)
let union = setA.union(setB)
let difference = setA.subtracting(setB)

// 3
// Проверьте, является ли setA подмножеством setB.
// Проверьте, является ли setB подмножеством setA.

let isSubsetA = setA.isSubset(of: setB)
let isSubsetB = setB.isSubset(of: setA)

//4
//Найдите симметрическую разность множеств setA и setB.
//Проверьте, являются ли множества setA и setB равными.

let symmetricDifference = setA.symmetricDifference(setB)
let isEqual = setA == setB

// 5

print("Пересечение: \(intersection)")
print("Объединение: \(union)")
print("Разность: \(difference)")
print("setA является подмножеством setB: \(isSubsetA)")
print("setB является подмножеством setA: \(isSubsetB)")
print("Симметрическая разность: \(symmetricDifference)")
print("Множества равны: \(isEqual)")
