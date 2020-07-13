import FTTestingKit
import XCTest

final class TimesTests: XCTestCase {
    func testTimesVoid() {
        var aggregatedValue = 0
        10.times {
            aggregatedValue += 1
        }
        XCTAssertEqual(aggregatedValue, 10)
    }

    func testTimesValue() {
        let generatedCount = 10.times { Int.random(in: 0...100) }.count
        XCTAssertEqual(generatedCount, 10)
    }
}
