import XCTest
import FTTestingKit

final class ExpectationTests: XCTestCase {
    func testInstantExpectation() {
        expect(within: 0.5) { reply in
            reply(.success)
        }
    }

    func testAsyncExpectation() {
        expect(within: 0.5) { reply in
            DispatchQueue.main.async {
                reply(.success)
            }
        }
    }

    func testDelayedExpectation() {
        expect(within: 0.5) { reply in
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                reply(.success)
            }
        }
    }

    static var allTests = [
        ("testInstantExpectation", testInstantExpectation),
        ("testAsyncExpectation", testAsyncExpectation),
        ("testDelayedExpectation", testDelayedExpectation)
    ]
}
