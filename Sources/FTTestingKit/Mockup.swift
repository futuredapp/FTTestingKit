public protocol Mockup {
    static func random() -> Self
    static func random(count: Int) -> [Self]
}

public extension Mockup {
    static func random(count: Int) -> [Self] {
        return count.times(execute: random)
    }
}
