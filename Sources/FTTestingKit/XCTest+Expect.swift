import XCTest

public extension XCTestCase {
    /// Executes new asynchronous test using expectation and encapsulates the operation
    /// into transaction inside a closure.
    /// - Parameter seconds: Seconds until the expectations will time-out.
    /// - Parameter reply: Closure for encapsulating asynchronous tests into transactions,
    ///                    the parameter of the clousre is callback for returning the result
    ///                    of the asynchronous operation.
    func expect(
        within seconds: TimeInterval,
        reply: @escaping (@escaping (Result<Void, Error>) -> Void) -> Void
    ) {
        let expectation = XCTestExpectation(description: "Expect reply within \(seconds)")
        reply { result in
            if case .failure(let error) = result {
                XCTFail("Expectation got error in reply: \(error.localizedDescription)")
            }
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: seconds)
    }
}
