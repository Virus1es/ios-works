final class Goat: Animal {
    init(_ name: String, age: Int = 0, gender: Gender = .random()) {
        super.init(
            name: name,
            type: "Коза",
            gender: gender,
            age: age,
            lifeLimit: 10,
            hungerLimit: 5,
            foodProbability: 75,
            birthProbability: 30,
            adultAge: 2
        )
    }

    override func createBaby(number: Int) -> Animal {
        Goat("козлёнок-\(number)")
    }
}