final class Owl: Animal {
    init(_ name: String, age: Int = 0, gender: Gender = .random()) {
        super.init(
            name: name,
            type: "Сова",
            gender: gender,
            age: age,
            lifeLimit: 9,
            hungerLimit: 4,
            foodProbability: 65,
            birthProbability: 20,
            adultAge: 2
        )
    }

    override func createBaby(number: Int) -> Animal {
        Owl("совёнок-\(number)")
    }
}