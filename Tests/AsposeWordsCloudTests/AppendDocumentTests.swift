/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="AppendDocumentTests.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
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

      let requestDocumentListDocumentEntries0 = DocumentEntry()
        .setHref(href: remoteDataFolder + "/" + remoteFileName)
        .setImportFormatMode(importFormatMode: "KeepSourceFormatting");
      let requestDocumentListDocumentEntries = [
        requestDocumentListDocumentEntries0 as! DocumentEntry
      ];
      let requestDocumentList = DocumentEntryList()
        .setDocumentEntries(documentEntries: requestDocumentListDocumentEntries);
      let request = AppendDocumentRequest(name: remoteFileName, documentList: requestDocumentList, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().appendDocument(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestAppendDocument.docx");
    }

    // Test for appending document online.
    func testAppendDocumentOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestDocumentListOnlineDocumentEntries0FileStream = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestDocumentListOnlineDocumentEntries0File = FileContent(filename: localFile, content: requestDocumentListOnlineDocumentEntries0FileStream);
      let requestDocumentListOnlineDocumentEntries0 = OnlineDocumentEntry()
        .setFile(file: requestDocumentListOnlineDocumentEntries0File)
        .setImportFormatMode(importFormatMode: "KeepSourceFormatting");
      let requestDocumentListOnlineDocumentEntries = [
        requestDocumentListOnlineDocumentEntries0 as! OnlineDocumentEntry
      ];
      let requestDocumentList = OnlineDocumentEntryList()
        .setOnlineDocumentEntries(onlineDocumentEntries: requestDocumentListOnlineDocumentEntries);
      let request = AppendDocumentOnlineRequest(document: requestDocument, documentList: requestDocumentList);
      _ = try super.getApi().appendDocumentOnline(request: request);
    }
}
