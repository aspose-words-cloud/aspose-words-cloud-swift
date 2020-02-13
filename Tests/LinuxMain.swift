import XCTest
import SwiftTestReporter
import AsposeWordsCloudTests

_ = TestObserver();

var tests = [XCTestCaseEntry]()
tests += AsposeWordsCloudTests.allTests()
XCTMain(tests)
