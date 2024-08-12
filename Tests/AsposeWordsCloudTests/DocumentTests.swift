/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentTests.swift">
 *   Copyright (c) 2024 Aspose.Words for Cloud
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

// Example of how to get document.
class DocumentTests: BaseTestContext {
    static var allTests = [
        ("testGetDocument", testGetDocument),
        ("testCreateDocument", testCreateDocument)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Document";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting document.
    func testGetDocument() throws {
      let remoteFileName = "TestGetDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentRequest(documentName: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getDocument(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestGetDocument.docx")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestGetDocument.docx"); return; }
    }

    // Test for creating word document.
    func testCreateDocument() throws {
      let remoteFileName = "TestCreateDocument.doc";

      let request = CreateDocumentRequest(fileName: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().createDocument(request: request);
      if (!(actual.getDocument() != nil)) { XCTFail("actual.getDocument() != nil"); return; }
      if (!(actual.getDocument()!.getFileName() == "TestCreateDocument.doc")) { XCTFail("actual.getDocument()!.getFileName() == " + "TestCreateDocument.doc"); return; }
    }
}
