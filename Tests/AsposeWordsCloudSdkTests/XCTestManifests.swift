import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BookmarkTests.allTests),
        testCase(DocumentTests.allTests),
    ]
}
#endif
