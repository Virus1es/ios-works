final class Dog: Animal {
    init(_ name: String, age: Int = 0, gender: Gender = .random()) {
        super.init(
            name: name,
            type: "Собака",
            gender: gender,
            age: age,
            lifeLimit: 11,
            hungerLimit: 5,
            foodProbability: 70,
            birthProbability: 25,
            adultAge: 2
        )
    }

    override func createBaby(number: Int) -> Animal {
        Dog("щенок-\(number)")
    }
}