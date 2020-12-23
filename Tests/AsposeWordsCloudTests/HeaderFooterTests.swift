/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="HeaderFooterTests.swift">
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

// Example of how to work with headers and footers.
class HeaderFooterTests: BaseTestContext {
    static var allTests = [
        ("testGetHeaderFooters", testGetHeaderFooters),
        ("testGetHeaderFootersOnline", testGetHeaderFootersOnline),
        ("testGetHeaderFooter", testGetHeaderFooter),
        ("testGetHeaderFooterOnline", testGetHeaderFooterOnline),
        ("testGetHeaderFooterOfSection", testGetHeaderFooterOfSection),
        ("testGetHeaderFooterOfSectionOnline", testGetHeaderFooterOfSectionOnline),
        ("testDeleteHeaderFooter", testDeleteHeaderFooter),
        ("testDeleteHeaderFooterOnline", testDeleteHeaderFooterOnline),
        ("testDeleteHeadersFooters", testDeleteHeadersFooters),
        ("testDeleteHeadersFootersOnline", testDeleteHeadersFootersOnline),
        ("testInsertHeaderFooter", testInsertHeaderFooter),
        ("testInsertHeaderFooterOnline", testInsertHeaderFooterOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/HeaderFooters";
    let localFile = "DocumentElements/HeaderFooters/HeadersFooters.doc";

    // Test for getting headers and footers.
    func testGetHeaderFooters() throws {
      let remoteFileName = "TestGetHeadersFooters.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFootersRequest(name: remoteFileName, sectionPath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooters(request: request);
      XCTAssertNotNil(actual.getHeaderFooters());
      XCTAssertNotNil(actual.getHeaderFooters()!.getList());
      XCTAssertEqual(actual.getHeaderFooters()!.getList()!.count, 6);
    }

    // Test for getting headers and footers online.
    func testGetHeaderFootersOnline() throws {
      let request = GetHeaderFootersOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, sectionPath: "");
      _ = try super.getApi().getHeaderFootersOnline(request: request);
    }

    // Test for getting headerfooter.
    func testGetHeaderFooter() throws {
      let remoteFileName = "TestGetHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFooterRequest(name: remoteFileName, headerFooterIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooter(request: request);
      XCTAssertNotNil(actual.getHeaderFooter());
      XCTAssertNotNil(actual.getHeaderFooter()!.getChildNodes());
      XCTAssertEqual(actual.getHeaderFooter()!.getChildNodes()!.count, 1);
      XCTAssertEqual(actual.getHeaderFooter()!.getChildNodes()![0].getNodeId(), "0.0.0");
    }

    // Test for getting headerfooter online.
    func testGetHeaderFooterOnline() throws {
      let request = GetHeaderFooterOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, headerFooterIndex: 0);
      _ = try super.getApi().getHeaderFooterOnline(request: request);
    }

    // Test for getting headerfooter of section.
    func testGetHeaderFooterOfSection() throws {
      let remoteFileName = "TestGetHeaderFooterOfSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFooterOfSectionRequest(name: remoteFileName, headerFooterIndex: 0, sectionIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooterOfSection(request: request);
      XCTAssertNotNil(actual.getHeaderFooter());
      XCTAssertNotNil(actual.getHeaderFooter()!.getChildNodes());
      XCTAssertEqual(actual.getHeaderFooter()!.getChildNodes()!.count, 1);
      XCTAssertEqual(actual.getHeaderFooter()!.getChildNodes()![0].getNodeId(), "0.0.0");
    }

    // Test for getting headerfooter of section online.
    func testGetHeaderFooterOfSectionOnline() throws {
      let request = GetHeaderFooterOfSectionOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, headerFooterIndex: 0, sectionIndex: 0);
      _ = try super.getApi().getHeaderFooterOfSectionOnline(request: request);
    }

    // Test for deleting headerfooter.
    func testDeleteHeaderFooter() throws {
      let remoteFileName = "TestDeleteHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteHeaderFooterRequest(name: remoteFileName, sectionPath: "", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteHeaderFooter(request: request);
    }

    // Test for deleting headerfooter online.
    func testDeleteHeaderFooterOnline() throws {
      let request = DeleteHeaderFooterOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, sectionPath: "", index: 0);
      _ = try super.getApi().deleteHeaderFooterOnline(request: request);
    }

    // Test for deleting headerfooters.
    func testDeleteHeadersFooters() throws {
      let remoteFileName = "TestDeleteHeadersFooters.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteHeadersFootersRequest(name: remoteFileName, sectionPath: "", folder: remoteDataFolder);
      try super.getApi().deleteHeadersFooters(request: request);
    }

    // Test for deleting headerfooters online.
    func testDeleteHeadersFootersOnline() throws {
      let request = DeleteHeadersFootersOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, sectionPath: "");
      _ = try super.getApi().deleteHeadersFootersOnline(request: request);
    }

    // Test for adding headerfooters.
    func testInsertHeaderFooter() throws {
      let remoteFileName = "TestInsertHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = InsertHeaderFooterRequest(name: remoteFileName, sectionPath: "", headerFooterType: "FooterEven", folder: remoteDataFolder);
      _ = try super.getApi().insertHeaderFooter(request: request);
    }

    // Test for adding headerfooters online.
    func testInsertHeaderFooterOnline() throws {
      let request = InsertHeaderFooterOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, sectionPath: "", headerFooterType: "FooterEven");
      let actual = try super.getApi().insertHeaderFooterOnline(request: request);
      XCTAssertNotNil(actual.getModel()!.getHeaderFooter());
      XCTAssertNotNil(actual.getModel()!.getHeaderFooter()!.getChildNodes());
      XCTAssertEqual(actual.getModel()!.getHeaderFooter()!.getChildNodes()!.count, 1);
      XCTAssertEqual(actual.getModel()!.getHeaderFooter()!.getChildNodes()![0].getNodeId(), "0.2.0");
    }
}
