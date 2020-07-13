import FTTestingKitPromiseKit
import PromiseKit
import XCTest

final class BelieveTests: XCTestCase {
    func testInstantPromise() {
        believe(for: 0.5, in: Promise())
    }

    func testDelayedPromise() {
        believe(for: 0.5, in: after(seconds: 0.05))
    }
}
