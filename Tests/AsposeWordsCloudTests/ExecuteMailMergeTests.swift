/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ExecuteMailMergeTests.swift">
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

// Example of how to perform mail merge.
class ExecuteMailMergeTests: BaseTestContext {
    static var allTests = [
        ("testExecuteMailMergeOnline", testExecuteMailMergeOnline),
        ("testExecuteMailMerge", testExecuteMailMerge)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/MailMerge";
    let mailMergeFolder = "DocumentActions/MailMerge";

    // Test for executing mail merge online.
    func testExecuteMailMergeOnline() throws {
      let localDocumentFile = "SampleExecuteTemplate.docx";
      let localDataFile = "SampleExecuteTemplateData.txt";

      let request = ExecuteMailMergeOnlineRequest(template: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/" + localDocumentFile, isDirectory: false))!, data: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/" + localDataFile, isDirectory: false))!);
      _ = try super.getApi().executeMailMergeOnline(request: request);
    }

    // Test for executing mail merge.
    func testExecuteMailMerge() throws {
      let localDocumentFile = "SampleExecuteTemplate.docx";
      let remoteFileName = "TestExecuteMailMerge.docx";
      let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/SampleMailMergeTemplateData.txt", isDirectory: false));

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(mailMergeFolder + "/" + localDocumentFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = ExecuteMailMergeRequest(name: remoteFileName, data: localDataFile, folder: remoteDataFolder, withRegions: false, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().executeMailMerge(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestExecuteMailMerge.docx");
    }
}
