import XCTest
@testable import FTTestingKit

final class FTTestingKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FTTestingKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
