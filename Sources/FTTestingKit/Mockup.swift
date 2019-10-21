/// Protocol unifying the form of randomly generated mockups.
public protocol Mockup {
    /// Generates one randomly generated mockup.
    static func random() -> Self
    /// Generates array of randomly generated mockups.
    /// - Parameter count: Number of generated items.
    static func random(count: Int) -> [Self]
}

public extension Mockup {
    static func random(count: Int) -> [Self] {
        return count.times(execute: random)
    }
}
