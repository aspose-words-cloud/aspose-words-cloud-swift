/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RevisionsTests.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import XCTest
@testable import AsposeWordsCloud

// Example of how to accept all revisions in document.
class RevisionsTests: BaseTestContext {
    static var allTests = [
        ("testAcceptAllRevisions", testAcceptAllRevisions),
        ("testAcceptAllRevisionsOnline", testAcceptAllRevisionsOnline),
        ("testRejectAllRevisions", testRejectAllRevisions),
        ("testRejectAllRevisionsOnline", testRejectAllRevisionsOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Revisions";
    let localFile = "Common/test_multi_pages.docx";

    // Test for accepting revisions in document.
    func testAcceptAllRevisions() throws {
      let remoteFileName = "TestAcceptAllRevisions.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = AcceptAllRevisionsRequest(name: remoteFileName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().acceptAllRevisions(request: request);
      XCTAssertNotNil(actual.getResult());
      XCTAssertNotNil(actual.getResult()!.getDest());
    }

    // Test for accepting revisions in document online.
    func testAcceptAllRevisionsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = AcceptAllRevisionsOnlineRequest(document: requestDocument);
      let actual = try super.getApi().acceptAllRevisionsOnline(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertNotNil(actual.getModel());
      XCTAssertNotNil(actual.getModel()!.getResult());
      XCTAssertNotNil(actual.getModel()!.getResult()!.getDest());
    }

    // Test for rejecting revisions in document.
    func testRejectAllRevisions() throws {
      let remoteFileName = "TestRejectAllRevisions.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RejectAllRevisionsRequest(name: remoteFileName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().rejectAllRevisions(request: request);
      XCTAssertNotNil(actual.getResult());
      XCTAssertNotNil(actual.getResult()!.getDest());
    }

    // Test for rejecting revisions in document online.
    func testRejectAllRevisionsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = RejectAllRevisionsOnlineRequest(document: requestDocument);
      let actual = try super.getApi().rejectAllRevisionsOnline(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertNotNil(actual.getModel());
      XCTAssertNotNil(actual.getModel()!.getResult());
      XCTAssertNotNil(actual.getModel()!.getResult()!.getDest());
    }
}
