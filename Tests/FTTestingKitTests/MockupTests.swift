import XCTest
import FTTestingKit

final class MockupTests: XCTestCase {
    func testArrayGeneration() {
        let strings = String.random(count: 5)
        XCTAssertEqual(strings.count, 5)
    }

    func testDateRandomness() {
        XCTAssertNotEqual(Date.random(), Date.random())
    }

    func testSingleCharacterString() {
        let string = String.random(length: 5, characters: ["a"])
        XCTAssertEqual(string, "aaaaa")
    }

    func testStringRandomness() {
        XCTAssertNotEqual(String.random(), String.random())
    }
}
