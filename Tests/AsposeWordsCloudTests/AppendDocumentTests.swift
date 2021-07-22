/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AppendDocumentTests.swift">
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

// Example of how to append document.
class AppendDocumentTests: BaseTestContext {
    static var allTests = [
        ("testAppendDocument", testAppendDocument),
        ("testAppendDocumentOnline", testAppendDocumentOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/AppendDocument";
    let localFile = "Common/test_multi_pages.docx";

    // Test for appending document.
    func testAppendDocument() throws {
      let remoteFileName = "TestAppendDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let documentListDocumentEntries0 = DocumentEntry();
      documentListDocumentEntries0.setHref(href: remoteDataFolder + "/" + remoteFileName);
      documentListDocumentEntries0.setImportFormatMode(importFormatMode: "KeepSourceFormatting");

      let documentListDocumentEntries = [documentListDocumentEntries0];

      let documentList = DocumentEntryList();
      documentList.setDocumentEntries(documentEntries: documentListDocumentEntries);


      let request = AppendDocumentRequest(name: remoteFileName, documentList: documentList, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().appendDocument(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestAppendDocument.docx");
    }

    // Test for appending document online.
    func testAppendDocumentOnline() throws {
      let remoteFileName = "TestAppendDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let documentListDocumentEntries0 = DocumentEntry();
      documentListDocumentEntries0.setHref(href: remoteDataFolder + "/" + remoteFileName);
      documentListDocumentEntries0.setImportFormatMode(importFormatMode: "KeepSourceFormatting");

      let documentListDocumentEntries = [documentListDocumentEntries0];

      let documentList = DocumentEntryList();
      documentList.setDocumentEntries(documentEntries: documentListDocumentEntries);


      let request = AppendDocumentOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, documentList: documentList);
      _ = try super.getApi().appendDocumentOnline(request: request);
    }
}
