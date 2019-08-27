import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ExpectationTests.allTests),
        testCase(TimesTests.allTests),
        testCase(MockupTests.allTests)
    ]
}
#endif
