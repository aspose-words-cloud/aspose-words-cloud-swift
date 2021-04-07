/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareDocumentTests.swift">
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

// Example of document comparison.
class CompareDocumentTests: BaseTestContext {
    static var allTests = [
        ("testCompareDocument", testCompareDocument),
        ("testCompareDocumentOnline", testCompareDocumentOnline)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/CompareDocument";
    let localFolder = "DocumentActions/CompareDocument";

    // Test for document comparison.
    func testCompareDocument() throws {
      let localName1 = "compareTestDoc1.doc";
      let localName2 = "compareTestDoc2.doc";
      let remoteName1 = "TestCompareDocument1.doc";
      let remoteName2 = "TestCompareDocument2.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName1, isDirectory: false), path: remoteFolder + "/" + remoteName1);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestCompareData = CompareData();
      requestCompareData.setAuthor(author: "author");
      requestCompareData.setComparingWithDocument(comparingWithDocument: remoteFolder + "/" + remoteName2);
      requestCompareData.setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);


      let request = CompareDocumentRequest(name: remoteName1, compareData: requestCompareData, folder: remoteFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.doc");
      let actual = try super.getApi().compareDocument(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestCompareDocumentOut.doc");
    }

    // Test for document comparison online.
    func testCompareDocumentOnline() throws {
      let localName1 = "compareTestDoc1.doc";
      let localName2 = "compareTestDoc2.doc";
      let remoteName2 = "TestCompareDocument2.doc";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName2, isDirectory: false), path: remoteFolder + "/" + remoteName2);

      let requestCompareData = CompareData();
      requestCompareData.setAuthor(author: "author");
      requestCompareData.setComparingWithDocument(comparingWithDocument: remoteFolder + "/" + remoteName2);
      requestCompareData.setDateTime(dateTime: ObjectSerializer.customIso8601.date(from: "2015-10-26T00:00:00Z")!);


      let request = CompareDocumentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName1, isDirectory: false))!, compareData: requestCompareData, destFileName: BaseTestContext.getRemoteTestOut() + "/TestCompareDocumentOut.doc");
      _ = try super.getApi().compareDocumentOnline(request: request);
    }
}
