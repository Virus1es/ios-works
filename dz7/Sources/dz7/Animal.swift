class Animal {
    let name: String
    let type: String
    let gender: Gender

    var age: Int
    var hunger: Int
    var health: Int
    var alive: Bool = true

    let lifeLimit: Int
    let hungerLimit: Int
    let foodProbability: Int
    let birthProbability: Int
    let adultAge: Int

    var title: String {
        "\(type) \(name)"
    }

    init(
        name: String,
        type: String,
        gender: Gender = .random(),
        age: Int = 0,
        hunger: Int = 0,
        health: Int = 100,
        lifeLimit: Int,
        hungerLimit: Int,
        foodProbability: Int,
        birthProbability: Int,
        adultAge: Int
    ) {
        self.name = name
        self.type = type
        self.gender = gender
        self.age = age
        self.hunger = hunger
        self.health = health
        self.lifeLimit = lifeLimit
        self.hungerLimit = hungerLimit
        self.foodProbability = foodProbability
        self.birthProbability = birthProbability
        self.adultAge = adultAge
    }

    func liveOneDay() {
        age += 1
        hunger += 1

        if hunger >= 2 {
            health -= 10
        }

        print("\(title) прожил ещё один день. Возраст: \(age), голод: \(hunger), здоровье: \(health).")
    }

    func searchFood() {
        let chance = Int.random(in: 1...100)

        if chance <= foodProbability {
            hunger = max(0, hunger - 2)
            health = min(100, health + 5)
            print("\(title) нашёл еду.")
        } else {
            hunger += 1
            print("\(title) остался голодным. Голод: \(hunger).")
        }
    }

    func canHaveChild(with partner: Animal) -> Bool {
        guard alive && partner.alive else {
            return false
        }

        guard type == partner.type else {
            return false
        }

        guard gender != partner.gender else {
            return false
        }

        guard age >= adultAge && partner.age >= partner.adultAge else {
            return false
        }

        let chance = Int.random(in: 1...100)
        return chance <= birthProbability
    }

    func createBaby(number: Int) -> Animal {
        fatalError("Метод должен быть переопределён у конкретного животного")
    }

    func checkLifeStatus() -> String? {
        if age > lifeLimit {
            alive = false
            return "\(title) умер от старости."
        }

        if hunger >= hungerLimit {
            alive = false
            return "\(title) умер от голода."
        }

        if health <= 0 {
            alive = false
            return "\(title) умер из-за плохого здоровья."
        }

        return nil
    }

    func info() {
        print("\(title): \(gender.rawValue), возраст \(age), голод \(hunger), здоровье \(health).")
    }
}