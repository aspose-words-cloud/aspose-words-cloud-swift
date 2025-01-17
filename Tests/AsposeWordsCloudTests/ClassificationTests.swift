/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ClassificationTests.swift">
 *   Copyright (c) 2025 Aspose.Words for Cloud
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

// Example of how to classify text.
class ClassificationTests: BaseTestContext {
    static var allTests = [
        ("testClassify", testClassify),
        ("testClassifyDocument", testClassifyDocument),
        ("testClassifyDocumentOnline", testClassifyDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/Common";
    let localFile = "Common/test_multi_pages.docx";

    // Test for raw text classification.
    func testClassify() throws {
      let request = ClassifyRequest(text: "Try text classification", bestClassesCount: "3");
      let actual = try super.getApi().classify(request: request);
      if (!(actual.getBestClassName() == "Science")) { XCTFail("actual.getBestClassName() == " + "Science"); return; }
      if (!(actual.getBestResults() != nil)) { XCTFail("actual.getBestResults() != nil"); return; }
      if (!(actual.getBestResults()?.count == 3)) { XCTFail("actual.getBestResults()?.count == 3"); return; }
    }

    // Test for document classification.
    func testClassifyDocument() throws {
      let remoteFileName = "TestClassifyDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = ClassifyDocumentRequest(name: remoteFileName, folder: remoteDataFolder, bestClassesCount: "3");
      let actual = try super.getApi().classifyDocument(request: request);
      if (!(actual.getBestClassName() == "Hobbies_&_Interests")) { XCTFail("actual.getBestClassName() == " + "Hobbies_&_Interests"); return; }
      if (!(actual.getBestResults() != nil)) { XCTFail("actual.getBestResults() != nil"); return; }
      if (!(actual.getBestResults()?.count == 3)) { XCTFail("actual.getBestResults()?.count == 3"); return; }
    }

    // Test for document classification online.
    func testClassifyDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = ClassifyDocumentOnlineRequest(document: requestDocument, bestClassesCount: "3");
      _ = try super.getApi().classifyDocumentOnline(request: request);
    }
}
