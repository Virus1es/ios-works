import Foundation

let zoo = Zoo(animals: [
    Tiger("Шерхан", age: 5, gender: .male),
    Tiger("Рада", age: 4, gender: .female),

    Rabbit("Пушок", age: 1, gender: .male),
    Rabbit("Белка", age: 1, gender: .female),

    Dog("Рекс", age: 3, gender: .male),
    Dog("Лада", age: 2, gender: .female),

    Owl("Архимед", age: 2, gender: .male),
    Owl("Ночка", age: 2, gender: .female),

    Goat("Марта", age: 2, gender: .female)
])

zoo.start(days: 7)