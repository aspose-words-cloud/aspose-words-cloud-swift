/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SectionTests.swift">
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

// Example of how to work with sections.
class SectionTests: BaseTestContext {
    static var allTests = [
        ("testGetSection", testGetSection),
        ("testGetSections", testGetSections),
        ("testDeleteSection", testDeleteSection)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Section";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting section by index.
    func testGetSection() throws {
      let remoteFileName = "TestGetSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetSectionRequest(name: remoteFileName, sectionIndex: 0, folder: remoteDataFolder);
      _ = try super.getApi().getSection(request: request);
    }

    // Test for getting sections.
    func testGetSections() throws {
      let remoteFileName = "TestGetSections.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetSectionsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getSections(request: request);
    }

    // Test for delete a section.
    func testDeleteSection() throws {
      let remoteFileName = "TestDeleteSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteSectionRequest(name: remoteFileName, sectionIndex: 0, folder: remoteDataFolder);
      try super.getApi().deleteSection(request: request);
    }
}
