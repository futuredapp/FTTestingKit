
import PromiseKit
import XCTest
import FTTestingKit

public extension XCTestCase {
    func believe<T>(for timeInterval: TimeInterval, in promise: @escaping @autoclosure () throws -> Promise<T>) {
        expect(within: timeInterval) { reply in
            firstly { try promise() }.asVoid().recover { error in
                reply(.failure(error))
            }.done {
                reply(.success)
            }
        }
    }

    func believe<T>(for timeInterval: TimeInterval, in guarantee: @escaping @autoclosure () -> Guarantee<T>) {
        expect(within: timeInterval) { reply in
            guarantee().asVoid().done {
                reply(.success)
            }.catch { error in
                reply(.failure(error))
            }
        }
    }
}
