final class Rabbit: Animal {
    init(_ name: String, age: Int = 0, gender: Gender = .random()) {
        super.init(
            name: name,
            type: "Кролик",
            gender: gender,
            age: age,
            lifeLimit: 6,
            hungerLimit: 4,
            foodProbability: 80,
            birthProbability: 45,
            adultAge: 1
        )
    }

    override func createBaby(number: Int) -> Animal {
        Rabbit("крольчонок-\(number)")
    }
}