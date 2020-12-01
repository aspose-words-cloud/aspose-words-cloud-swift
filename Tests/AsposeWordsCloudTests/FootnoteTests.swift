/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FootnoteTests.swift">
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

// Example of how to work with footnotes.
class FootnoteTests: BaseTestContext {
    static var allTests = [
        ("testInsertFootnote", testInsertFootnote),
        ("testInsertFootnoteOnline", testInsertFootnoteOnline),
        ("testInsertFootnoteWithoutNodePath", testInsertFootnoteWithoutNodePath),
        ("testDeleteFootnote", testDeleteFootnote),
        ("testDeleteFootnoteOnline", testDeleteFootnoteOnline),
        ("testDeleteFootnoteWithoutNodePath", testDeleteFootnoteWithoutNodePath),
        ("testGetFootnotes", testGetFootnotes),
        ("testGetFootnotesOnline", testGetFootnotesOnline),
        ("testGetFootnotesWithoutNodePath", testGetFootnotesWithoutNodePath),
        ("testGetFootnote", testGetFootnote),
        ("testGetFootnoteOnline", testGetFootnoteOnline),
        ("testGetFootnoteWithoutNodePath", testGetFootnoteWithoutNodePath),
        ("testUpdateFootnote", testUpdateFootnote),
        ("testUpdateFootnoteOnline", testUpdateFootnoteOnline),
        ("testUpdateFootnoteWithoutNodePath", testUpdateFootnoteWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Footnotes";
    let footnoteFolder = "DocumentElements/Footnotes";

    // Test for adding footnote.
    func testInsertFootnote() throws {
      let remoteFileName = "TestInsertFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteInsert();
      requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
      requestFootnoteDto.setText(text: "test endnote");


      let request = InsertFootnoteRequest(name: remoteFileName, footnoteDto: requestFootnoteDto, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().insertFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getNodeId(), "0.1.7.1");
      XCTAssertEqual(actual.getFootnote()!.getText(), " test endnote" + "\r\n");
    }

    // Test for adding footnote online.
    func testInsertFootnoteOnline() throws {
      let requestFootnoteDto = FootnoteInsert();
      requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
      requestFootnoteDto.setText(text: "test endnote");


      let request = InsertFootnoteOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, footnoteDto: requestFootnoteDto, nodePath: "");
      _ = try super.getApi().insertFootnoteOnline(request: request);
    }

    // Test for adding footnote without node path.
    func testInsertFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestInsertFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteInsert();
      requestFootnoteDto.setFootnoteType(footnoteType: FootnoteInsert.FootnoteType.endnote);
      requestFootnoteDto.setText(text: "test endnote");


      let request = InsertFootnoteRequest(name: remoteFileName, footnoteDto: requestFootnoteDto, folder: remoteDataFolder);
      let actual = try super.getApi().insertFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getNodeId(), "0.1.7.1");
      XCTAssertEqual(actual.getFootnote()!.getText(), " test endnote" + "\r\n");
    }

    // Test for deleting footnote.
    func testDeleteFootnote() throws {
      let remoteFileName = "TestDeleteFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFootnoteRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteFootnote(request: request);
    }

    // Test for deleting footnote online.
    func testDeleteFootnoteOnline() throws {
      let request = DeleteFootnoteOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, index: 0, nodePath: "");
      _ = try super.getApi().deleteFootnoteOnline(request: request);
    }

    // Test for deleting footnote without node path.
    func testDeleteFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestDeleteFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFootnoteRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteFootnote(request: request);
    }

    // Test for getting footnotes.
    func testGetFootnotes() throws {
      let remoteFileName = "TestGetFootnotes.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnotesRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getFootnotes(request: request);
      XCTAssertNotNil(actual.getFootnotes());
      XCTAssertNotNil(actual.getFootnotes()!.getList());
      XCTAssertEqual(actual.getFootnotes()!.getList()!.count, 6);
      XCTAssertEqual(actual.getFootnotes()!.getList()![0].getText(), " Footnote 1." + "\r\n");
    }

    // Test for getting footnotes online.
    func testGetFootnotesOnline() throws {
      let request = GetFootnotesOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, nodePath: "");
      _ = try super.getApi().getFootnotesOnline(request: request);
    }

    // Test for getting footnotes without node path.
    func testGetFootnotesWithoutNodePath() throws {
      let remoteFileName = "TestGetFootnotesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnotesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getFootnotes(request: request);
      XCTAssertNotNil(actual.getFootnotes());
      XCTAssertNotNil(actual.getFootnotes()!.getList());
      XCTAssertEqual(actual.getFootnotes()!.getList()!.count, 6);
      XCTAssertEqual(actual.getFootnotes()!.getList()![0].getText(), " Footnote 1." + "\r\n");
    }

    // Test for getting footnote.
    func testGetFootnote() throws {
      let remoteFileName = "TestGetFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnoteRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getText(), " Footnote 1." + "\r\n");
    }

    // Test for getting footnote online.
    func testGetFootnoteOnline() throws {
      let request = GetFootnoteOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, index: 0, nodePath: "");
      _ = try super.getApi().getFootnoteOnline(request: request);
    }

    // Test for getting footnote without node path.
    func testGetFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestGetFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnoteRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getText(), " Footnote 1." + "\r\n");
    }

    // Test for updating footnote.
    func testUpdateFootnote() throws {
      let remoteFileName = "TestUpdateFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteUpdate();
      requestFootnoteDto.setText(text: "new text is here");


      let request = UpdateFootnoteRequest(name: remoteFileName, index: 0, footnoteDto: requestFootnoteDto, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getText(), " new text is here" + "\r\n");
    }

    // Test for updating footnote online.
    func testUpdateFootnoteOnline() throws {
      let requestFootnoteDto = FootnoteUpdate();
      requestFootnoteDto.setText(text: "new text is here");


      let request = UpdateFootnoteOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, footnoteDto: requestFootnoteDto, index: 0, nodePath: "");
      _ = try super.getApi().updateFootnoteOnline(request: request);
    }

    // Test for updating footnote without node path.
    func testUpdateFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestUpdateFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteUpdate();
      requestFootnoteDto.setText(text: "new text is here");


      let request = UpdateFootnoteRequest(name: remoteFileName, index: 0, footnoteDto: requestFootnoteDto, folder: remoteDataFolder);
      let actual = try super.getApi().updateFootnote(request: request);
      XCTAssertNotNil(actual.getFootnote());
      XCTAssertEqual(actual.getFootnote()!.getText(), " new text is here" + "\r\n");
    }
}
