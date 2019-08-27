public extension Int {
    func times(execute: () -> Void) {
        for _ in 0..<self {
            execute()
        }
    }

    func times<T>(execute: () -> T) -> [T] {
        return (0..<self).map { _ in execute() }
    }
}
