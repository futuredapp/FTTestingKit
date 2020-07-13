import PromiseKit
import XCTest
#if !COCOAPODS
import FTTestingKit
#endif

public extension XCTestCase {
    /// Executes new asynchronous test using expectation and encapsulates the operation
    /// into a closure returning promise.
    /// - Parameter timeInterval: Number of seconds until the test will time-out.
    /// - Parameter promise: Operation encapsulated inside of promise which will be
    ///                      tested for time-out and successful result.
    func believe<T>(for timeInterval: TimeInterval, in promise: @escaping @autoclosure () throws -> Promise<T>) {
        expect(within: timeInterval) { reply in
            firstly(execute: promise)
                .asVoid()
                .recover { error in
                    reply(.failure(error))
                }
                .done {
                    reply(.success)
                }
        }
    }

    /// Executes new asynchronous test using expectation and encapsulates the operation
    /// into a closure returning guarantee.
    /// - Parameter timeInterval: Number of seconds until the test will time-out.
    /// - Parameter promise: Operation encapsulated inside of guarantee which will be
    ///                      tested for time-out and successful result.
    func believe<T>(for timeInterval: TimeInterval, in guarantee: @escaping @autoclosure () -> Guarantee<T>) {
        expect(within: timeInterval) { reply in
            guarantee()
                .asVoid()
                .done {
                    reply(.success)
                }
                .catch { error in
                    reply(.failure(error))
                }
        }
    }
}
