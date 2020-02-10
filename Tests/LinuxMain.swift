import XCTest
import SwiftTestReporter
import AsposeWordsCloudSdkTests

_ = TestObserver();

var tests = [XCTestCaseEntry]()
tests += AsposeWordsCloudSdkTests.allTests()
XCTMain(tests)
