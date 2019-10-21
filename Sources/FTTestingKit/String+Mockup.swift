extension String: Mockup {

    private static let mockupCharacters = Array("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")

    public static func random() -> String {
        return random(length: 15, characters: mockupCharacters)
    }

    /// Generates random string of required length from supplied characters.
    /// - Parameter length: Length of the generated string in characters.
    /// - Parameter characters: Array of characters used to generate the random string.
    public static func random(
        length: Int,
        characters: [Character]
    ) -> String {
        return String(length.times {
            characters[Int.random(in: 0..<characters.count)]
        })
    }
}
