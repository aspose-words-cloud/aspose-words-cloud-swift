/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MailMergeFiledsTests.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Example of how to work with merge fields.
class MailMergeFiledsTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentFieldNamesOnline", testGetDocumentFieldNamesOnline),
        ("testGetDocumentFieldNames", testGetDocumentFieldNames)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/MailMerge";
    let mailMergeFolder = "DocumentActions/MailMerge";

    // Test for putting new fields.
    func testGetDocumentFieldNamesOnline() throws {
      let localDocumentFile = "SampleExecuteTemplate.docx";

      let request = GetDocumentFieldNamesOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/" + localDocumentFile, isDirectory: false))!, useNonMergeFields: true);
      _ = try super.getApi().getDocumentFieldNamesOnline(request: request);
    }

    // Test for getting mailmerge fields.
    func testGetDocumentFieldNames() throws {
      let remoteFileName = "TestGetDocumentFieldNames.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentFieldNamesRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentFieldNames(request: request);
    }
}