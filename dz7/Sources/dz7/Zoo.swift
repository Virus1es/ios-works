final class Zoo {
    private var animals: [Animal]
    private var dayNumber = 0

    private var bornTotal = 0
    private var deadTotal = 0
    private var babyNumbers: [String: Int] = [:]

    init(animals: [Animal]) {
        self.animals = animals
    }

    func start(days: Int) {
        for _ in 1...days {
            if animals.isEmpty {
                print("В зоопарке нет животных :(")
                break
            }

            runDay()
        }

        showFinalReport()
    }

    private func runDay() {
        dayNumber += 1

        print("\n----- День \(dayNumber) -----\n")

        var babies: [Animal] = []
        var diedToday = 0

        for animal in animals {
            guard animal.alive else {
                continue
            }

            animal.liveOneDay()
            animal.searchFood()

            if let deathText = animal.checkLifeStatus() {
                diedToday += 1
                print(deathText)
            }

            print("")
        }

        babies = processBirths()

        animals.append(contentsOf: babies)
        animals = animals.filter { $0.alive }

        bornTotal += babies.count
        deadTotal += diedToday

        showDayReport(born: babies.count, died: diedToday)
    }

    private func processBirths() -> [Animal] {
        var newborns: [Animal] = []
        var usedTypes: Set<String> = []

        for first in animals {
            if usedTypes.contains(first.type) {
                continue
            }

            guard first.alive else {
                continue
            }

            if let second = animals.first(where: {
                $0 !== first &&
                $0.alive &&
                $0.type == first.type &&
                $0.gender != first.gender
            }) {
                if first.canHaveChild(with: second) {
                    let number = nextBabyNumber(for: first.type)
                    let baby = first.createBaby(number: number)

                    newborns.append(baby)
                    usedTypes.insert(first.type)

                    print("У пары \(first.type) появился потомок: \(baby.title).")
                }
            }
        }

        return newborns
    }

    private func nextBabyNumber(for type: String) -> Int {
        let number = (babyNumbers[type] ?? 0) + 1
        babyNumbers[type] = number
        return number
    }

    private func showDayReport(born: Int, died: Int) {
        print("Итоги дня:")
        print("Животных сейчас: \(animals.count)")
        print("Родилось сегодня: \(born)")
        print("Умерло сегодня: \(died)")
        print("Состав зоопарка:")

        let grouped = Dictionary(grouping: animals) { $0.type }

        for key in grouped.keys.sorted() {
            print("\(key): \(grouped[key]?.count ?? 0)")
        }
    }

    private func showFinalReport() {
        print("\n----- Финальная статистика -----")
        print("Осталось животных: \(animals.count)")
        print("Всего родилось: \(bornTotal)")
        print("Всего умерло: \(deadTotal)")
        print("\nОставшиеся животные:")

        for animal in animals {
            animal.info()
        }
    }
}