import XCTest

public extension XCTestCase {
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
