
extension String: Mockup {

    private static let mockupCharacters = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

    public static func random() -> String {
        return random(length: 15, characters: mockupCharacters)
    }

    public static func random(
        length: Int,
        characters: Array<Character>
    ) -> String {
        return String(length.times {
            characters[Int.random(in: 0..<characters.count)]
        })
    }
}

