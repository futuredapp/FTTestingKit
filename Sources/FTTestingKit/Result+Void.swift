
public extension Result where Success == Void {
    static var success: Result<Void, Error> {
        return .success(())
    }
}
