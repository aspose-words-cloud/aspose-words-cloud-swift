/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="RunTests.swift">
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

// Example of how to work with runs.
class RunTests: BaseTestContext {
    static var allTests = [
        ("testUpdateRun", testUpdateRun),
        ("testInsertRun", testInsertRun),
        ("testDeleteRun", testDeleteRun)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Runs";
    let localFile = "DocumentElements/Runs/Run.doc";

    // Test for updating run.
    func testUpdateRun() throws {
      let remoteFileName = "TestUpdateRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRun = RunUpdate();
      requestRun.setText(text: "run with text");


      let request = UpdateRunRequest(name: remoteFileName, run: requestRun, paragraphPath: "paragraphs/1", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateRun(request: request);
    }

    // Test for adding run.
    func testInsertRun() throws {
      let remoteFileName = "TestInsertRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRun = RunInsert();
      requestRun.setText(text: "run with text");


      let request = InsertRunRequest(name: remoteFileName, paragraphPath: "paragraphs/1", run: requestRun, folder: remoteDataFolder);
      _ = try super.getApi().insertRun(request: request);
    }

    // Test for deleting run.
    func testDeleteRun() throws {
      let remoteFileName = "TestDeleteRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteRunRequest(name: remoteFileName, paragraphPath: "paragraphs/1", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteRun(request: request);
    }
}
