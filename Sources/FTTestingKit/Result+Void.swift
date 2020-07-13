public extension Result where Success == Void {
    /// Convenience case for success results with void values.
    static var success: Result<Void, Error> {
        .success(())
    }
}
