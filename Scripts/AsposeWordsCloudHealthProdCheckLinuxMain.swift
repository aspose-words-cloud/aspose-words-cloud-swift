import XCTest
import SwiftTestReporter
import AsposeWordsCloudHealthProdCheckTests

_ = TestObserver();

var tests = [XCTestCaseEntry]()
tests += AsposeWordsCloudHealthProdCheckTests.allTests()
XCTMain(tests)
