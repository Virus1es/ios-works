final class Tiger: Animal {
    init(_ name: String, age: Int = 0, gender: Gender = .random()) {
        super.init(
            name: name,
            type: "Тигр",
            gender: gender,
            age: age,
            lifeLimit: 14,
            hungerLimit: 6,
            foodProbability: 55,
            birthProbability: 12,
            adultAge: 4
        )
    }

    override func createBaby(number: Int) -> Animal {
        Tiger("тигрёнок-\(number)")
    }
}