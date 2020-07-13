extension Int {
    /// Executes supplied closure n-times.
    /// Handy for time measurement tests.
    /// - Parameter execute: Closure executed n-times.
    public func times(execute: () -> Void) {
        for _ in 0..<self {
            execute()
        }
    }

    /// Creates array of items by executing supplied
    /// closure n-times. Handy for generating
    /// arrays of random values.
    /// - Parameter execute: Closure returning some item n-times.
    public func times<T>(execute: () -> T) -> [T] {
        (0..<self).map { _ in execute() }
    }
}
