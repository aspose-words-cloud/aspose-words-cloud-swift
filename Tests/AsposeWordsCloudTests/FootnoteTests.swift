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
        ("testInsertFootnoteWithoutNodePath", testInsertFootnoteWithoutNodePath),
        ("testDeleteFootnote", testDeleteFootnote),
        ("testDeleteFootnoteWithoutNodePath", testDeleteFootnoteWithoutNodePath),
        ("testGetFootnotes", testGetFootnotes),
        ("testGetFootnotesWithoutNodePath", testGetFootnotesWithoutNodePath),
        ("testGetFootnote", testGetFootnote),
        ("testGetFootnoteWithoutNodePath", testGetFootnoteWithoutNodePath),
        ("testUpdateFootnote", testUpdateFootnote),
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
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getNodeId() ?? "").hasPrefix("0.1.7.1") == true);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" test endnote") == true);
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
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getNodeId() ?? "").hasPrefix("0.1.7.1") == true);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" test endnote") == true);
    }

    // Test for deleting footnote.
    func testDeleteFootnote() throws {
      let remoteFileName = "TestDeleteFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFootnoteRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteFootnote(request: request);
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
      assert(actual.getFootnotes() != nil);
      assert(actual.getFootnotes()!.getList() != nil);
      assert(6 == actual.getFootnotes()!.getList()!.count);
      assert( (actual.getFootnotes()!.getList()![0].getText() ?? "").hasPrefix(" Footnote 1.") == true);
    }

    // Test for getting footnotes without node path.
    func testGetFootnotesWithoutNodePath() throws {
      let remoteFileName = "TestGetFootnotesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnotesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getFootnotes(request: request);
      assert(actual.getFootnotes() != nil);
      assert(actual.getFootnotes()!.getList() != nil);
      assert(6 == actual.getFootnotes()!.getList()!.count);
      assert( (actual.getFootnotes()!.getList()![0].getText() ?? "").hasPrefix(" Footnote 1.") == true);
    }

    // Test for getting footnote.
    func testGetFootnote() throws {
      let remoteFileName = "TestGetFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnoteRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getFootnote(request: request);
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" Footnote 1.") == true);
    }

    // Test for getting footnote without node path.
    func testGetFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestGetFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFootnoteRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getFootnote(request: request);
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" Footnote 1.") == true);
    }

    // Test for updating footnote.
    func testUpdateFootnote() throws {
      let remoteFileName = "TestUpdateFootnote.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteUpdate();
      requestFootnoteDto.setText(text: "new text is here");


      let request = UpdateFootnoteRequest(name: remoteFileName, footnoteDto: requestFootnoteDto, index: 0, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateFootnote(request: request);
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" new text is here") == true);
    }

    // Test for updating footnote without node path.
    func testUpdateFootnoteWithoutNodePath() throws {
      let remoteFileName = "TestUpdateFootnoteWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(footnoteFolder + "/Footnote.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFootnoteDto = FootnoteUpdate();
      requestFootnoteDto.setText(text: "new text is here");


      let request = UpdateFootnoteRequest(name: remoteFileName, footnoteDto: requestFootnoteDto, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().updateFootnote(request: request);
      assert(actual.getFootnote() != nil);
      assert( (actual.getFootnote()!.getText() ?? "").hasPrefix(" new text is here") == true);
    }
}
