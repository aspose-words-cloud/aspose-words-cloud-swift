/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="SectionTests.swift">
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

// Example of how to work with sections.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class SectionTests: BaseTestContext {
    static var allTests = [
        ("testGetSection", testGetSection),
        ("testGetSectionOnline", testGetSectionOnline),
        ("testGetSections", testGetSections),
        ("testGetSectionsOnline", testGetSectionsOnline),
        ("testDeleteSection", testDeleteSection),
        ("testDeleteSectionOnline", testDeleteSectionOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Section";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting section by index.
    func testGetSection() throws {
      let remoteFileName = "TestGetSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetSectionRequest(name: remoteFileName, sectionIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getSection(request: request);
      XCTAssertNotNil(actual.getSection());
      XCTAssertNotNil(actual.getSection()!.getChildNodes());
      XCTAssertEqual(actual.getSection()!.getChildNodes()!.count, 13);
      XCTAssertEqual(actual.getSection()!.getChildNodes()![0].getNodeId(), "0.3.0");
    }

    // Test for getting section by index online.
    func testGetSectionOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
      _ = try super.getApi().getSectionOnline(request: request);
    }

    // Test for getting sections.
    func testGetSections() throws {
      let remoteFileName = "TestGetSections.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetSectionsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getSections(request: request);
      XCTAssertNotNil(actual.getSections());
      XCTAssertNotNil(actual.getSections()!.getSectionLinkList());
      XCTAssertEqual(actual.getSections()!.getSectionLinkList()!.count, 1);
      XCTAssertEqual(actual.getSections()!.getSectionLinkList()![0].getNodeId(), "0");
    }

    // Test for getting sections online.
    func testGetSectionsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = GetSectionsOnlineRequest(document: requestDocument);
      _ = try super.getApi().getSectionsOnline(request: request);
    }

    // Test for delete a section.
    func testDeleteSection() throws {
      let remoteFileName = "TestDeleteSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteSectionRequest(name: remoteFileName, sectionIndex: 0, folder: remoteDataFolder);
      try super.getApi().deleteSection(request: request);
    }

    // Test for delete a section online.
    func testDeleteSectionOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteSectionOnlineRequest(document: requestDocument, sectionIndex: 0);
      _ = try super.getApi().deleteSectionOnline(request: request);
    }
}
