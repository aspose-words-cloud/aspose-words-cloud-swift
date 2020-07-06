/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TextTests.swift">
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

// Example of how to work with macros.
class TextTests: BaseTestContext {
    static var allTests = [
        ("testReplaceText", testReplaceText),
        ("testSearch", testSearch)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Text";

    // Test for replacing text.
    func testReplaceText() throws {
      let remoteFileName = "TestReplaceText.docx";
      let localFile = "Common/test_multi_pages.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestReplaceText = ReplaceTextParameters();
      requestReplaceText.setOldValue(oldValue: "aspose");
      requestReplaceText.setNewValue(newValue: "aspose new");


      let request = ReplaceTextRequest(name: remoteFileName, replaceText: requestReplaceText, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().replaceText(request: request);
    }

    // Test for searching.
    func testSearch() throws {
      let remoteFileName = "TestSearch.docx";
      let localFile = "DocumentElements/Text/SampleWordDocument.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = SearchRequest(name: remoteFileName, pattern: "aspose", folder: remoteDataFolder);
      _ = try super.getApi().search(request: request);
    }
}
