enum Gender: String {
    case male = "самец"
    case female = "самка"

    static func random() -> Gender {
        Bool.random() ? .male : .female
    }
}