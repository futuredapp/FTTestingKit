import XCTest
import PromiseKit
import FTTestingKitPromiseKit

final class BelieveTests: XCTestCase {
    func testInstantPromise() {
        believe(for: 0.5, in: Promise())
    }

    func testDelayedPromise() {
        believe(for: 0.5, in: after(seconds: 0.05))
    }
}
