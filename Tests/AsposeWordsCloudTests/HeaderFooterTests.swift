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
        ("testGetHeaderFooter", testGetHeaderFooter),
        ("testGetHeaderFooterOfSection", testGetHeaderFooterOfSection),
        ("testDeleteHeaderFooter", testDeleteHeaderFooter),
        ("testDeleteHeadersFooters", testDeleteHeadersFooters),
        ("testInsertHeaderFooter", testInsertHeaderFooter)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/HeaderFooters";
    let localFile = "DocumentElements/HeaderFooters/HeadersFooters.doc";

    // Test for getting headers and footers.
    func testGetHeaderFooters() throws {
      let remoteFileName = "TestGetHeadersFooters.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFootersRequest(name: remoteFileName, sectionPath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooters(request: request);
      assert(actual.getHeaderFooters() != nil);
      assert(actual.getHeaderFooters()!.getList() != nil);
      assert(6 == actual.getHeaderFooters()!.getList()!.count);
    }

    // Test for getting headerfooter.
    func testGetHeaderFooter() throws {
      let remoteFileName = "TestGetHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFooterRequest(name: remoteFileName, headerFooterIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooter(request: request);
      assert(actual.getHeaderFooter() != nil);
      assert(actual.getHeaderFooter()!.getChildNodes() != nil);
      assert(1 == actual.getHeaderFooter()!.getChildNodes()!.count);
      assert( actual.getHeaderFooter()!.getChildNodes()![0].getNodeId().!.hasPrefix("0.0.0") == true);
    }

    // Test for getting headerfooter of section.
    func testGetHeaderFooterOfSection() throws {
      let remoteFileName = "TestGetHeaderFooterOfSection.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetHeaderFooterOfSectionRequest(name: remoteFileName, headerFooterIndex: 0, sectionIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getHeaderFooterOfSection(request: request);
      assert(actual.getHeaderFooter() != nil);
      assert(actual.getHeaderFooter()!.getChildNodes() != nil);
      assert(1 == actual.getHeaderFooter()!.getChildNodes()!.count);
      assert( actual.getHeaderFooter()!.getChildNodes()![0].getNodeId().!.hasPrefix("0.0.0") == true);
    }

    // Test for deleting headerfooter.
    func testDeleteHeaderFooter() throws {
      let remoteFileName = "TestDeleteHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteHeaderFooterRequest(name: remoteFileName, sectionPath: "", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteHeaderFooter(request: request);
    }

    // Test for deleting headerfooters.
    func testDeleteHeadersFooters() throws {
      let remoteFileName = "TestDeleteHeadersFooters.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteHeadersFootersRequest(name: remoteFileName, sectionPath: "", folder: remoteDataFolder);
      try super.getApi().deleteHeadersFooters(request: request);
    }

    // Test for adding headerfooters.
    func testInsertHeaderFooter() throws {
      let remoteFileName = "TestInsertHeaderFooter.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = InsertHeaderFooterRequest(name: remoteFileName, headerFooterType: "FooterEven", sectionPath: "", folder: remoteDataFolder);
      let actual = try super.getApi().insertHeaderFooter(request: request);
      assert(actual.getHeaderFooter() != nil);
      assert(actual.getHeaderFooter()!.getChildNodes() != nil);
      assert(1 == actual.getHeaderFooter()!.getChildNodes()!.count);
      assert( actual.getHeaderFooter()!.getChildNodes()![0].getNodeId().!.hasPrefix("0.2.0") == true);
    }
}
