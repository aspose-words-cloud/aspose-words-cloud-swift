/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphTests.swift">
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

// Example of how to work with paragraph.
class ParagraphTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentParagraphByIndex", testGetDocumentParagraphByIndex),
        ("testGetDocumentParagraphByIndexWithoutNodePath", testGetDocumentParagraphByIndexWithoutNodePath),
        ("testGetDocumentParagraphs", testGetDocumentParagraphs),
        ("testGetDocumentParagraphsWithoutNodePath", testGetDocumentParagraphsWithoutNodePath),
        ("testGetDocumentParagraphRun", testGetDocumentParagraphRun),
        ("testGetDocumentParagraphRunFont", testGetDocumentParagraphRunFont),
        ("testGetParagraphRuns", testGetParagraphRuns),
        ("testUpdateRunFont", testUpdateRunFont),
        ("testInsertParagraph", testInsertParagraph),
        ("testInsertParagraphWithoutNodePath", testInsertParagraphWithoutNodePath),
        ("testRenderParagraph", testRenderParagraph),
        ("testRenderParagraphWithoutNodePath", testRenderParagraphWithoutNodePath),
        ("testGetParagraphFormat", testGetParagraphFormat),
        ("testGetParagraphFormatWithoutNodePath", testGetParagraphFormatWithoutNodePath),
        ("testUpdateParagraphFormat", testUpdateParagraphFormat),
        ("testDeleteParagraph", testDeleteParagraph),
        ("testDeleteParagraphWithoutNodePath", testDeleteParagraphWithoutNodePath),
        ("testGetParagraphListFormat", testGetParagraphListFormat),
        ("testGetParagraphListFormatWithoutNodePath", testGetParagraphListFormatWithoutNodePath),
        ("testUpdateParagraphListFormat", testUpdateParagraphListFormat),
        ("testUpdateParagraphListFormatWithoutNodePath", testUpdateParagraphListFormatWithoutNodePath),
        ("testDeleteParagraphListFormat", testDeleteParagraphListFormat),
        ("testDeleteParagraphListFormatWithoutNodePath", testDeleteParagraphListFormatWithoutNodePath),
        ("testGetParagraphTabStops", testGetParagraphTabStops),
        ("testGetParagraphTabStopsWithoutNodePath", testGetParagraphTabStopsWithoutNodePath),
        ("testInsertParagraphTabStops", testInsertParagraphTabStops),
        ("testInsertParagraphTabStopsWithoutNodePath", testInsertParagraphTabStopsWithoutNodePath),
        ("testDeleteAllParagraphTabStops", testDeleteAllParagraphTabStops),
        ("testDeleteAllParagraphTabStopsWithoutNodePath", testDeleteAllParagraphTabStopsWithoutNodePath),
        ("testDeleteParagraphTabStop", testDeleteParagraphTabStop),
        ("testDeleteParagraphTabStopWithoutNodePath", testDeleteParagraphTabStopWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Paragraphs";
    let localFile = "Common/test_multi_pages.docx";
    let fieldFolder = "DocumentElements/Fields";
    let listFolder = "DocumentElements/ParagraphListFormat";
    let tabStopFolder = "DocumentElements/Paragraphs";

    // Test for getting paragraph.
    func testGetDocumentParagraphByIndex() throws {
      let remoteFileName = "TestGetDocumentParagraphByIndex.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphRequest(name: remoteFileName, nodePath: "sections/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraph(request: request);
    }

    // Test for getting paragraph without node path.
    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphWithoutNodePath(request: request);
    }

    // Test for getting all paragraphs.
    func testGetDocumentParagraphs() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getParagraphs(request: request);
    }

    // Test for getting all paragraphs without node path.
    func testGetDocumentParagraphsWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphsWithoutNodePathRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphsWithoutNodePath(request: request);
    }

    // Test for getting paragraph run.
    func testGetDocumentParagraphRun() throws {
      let remoteFileName = "TestGetDocumentParagraphRun.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getRun(request: request);
    }

    // Test for getting paragraph run font.
    func testGetDocumentParagraphRunFont() throws {
      let remoteFileName = "TestGetDocumentParagraphRunFont.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunFontRequest(name: remoteFileName, paragraphPath: "paragraphs/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getRunFont(request: request);
    }

    // Test for getting paragraph runs.
    func testGetParagraphRuns() throws {
      let remoteFileName = "TestGetParagraphRuns.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetRunsRequest(name: remoteFileName, paragraphPath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      _ = try super.getApi().getRuns(request: request);
    }

    // Test for updating paragraph run font.
    func testUpdateRunFont() throws {
      let remoteFileName = "TestUpdateRunFont.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFontDto = Font();
      requestFontDto.setBold(bold: true);


      let request = UpdateRunFontRequest(name: remoteFileName, fontDto: requestFontDto, paragraphPath: "paragraphs/0", index: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().updateRunFont(request: request);
    }

    // Test for adding paragraph.
    func testInsertParagraph() throws {
      let remoteFileName = "TestInsertParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestParagraph = ParagraphInsert();
      requestParagraph.setText(text: "This is a new paragraph for your document");


      let request = InsertParagraphRequest(name: remoteFileName, paragraph: requestParagraph, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().insertParagraph(request: request);
    }

    // Test for adding paragraph without node path.
    func testInsertParagraphWithoutNodePath() throws {
      let remoteFileName = "TestInsertParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestParagraph = ParagraphInsert();
      requestParagraph.setText(text: "This is a new paragraph for your document");


      let request = InsertParagraphWithoutNodePathRequest(name: remoteFileName, paragraph: requestParagraph, folder: remoteDataFolder);
      _ = try super.getApi().insertParagraphWithoutNodePath(request: request);
    }

    // Test for paragraph rendering.
    func testRenderParagraph() throws {
      let remoteFileName = "TestRenderParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderParagraphRequest(name: remoteFileName, format: "png", nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderParagraph(request: request);
    }

    // Test for paragraph rendering without node path.
    func testRenderParagraphWithoutNodePath() throws {
      let remoteFileName = "TestRenderParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderParagraphWithoutNodePathRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderParagraphWithoutNodePath(request: request);
    }

    // Test for getting paragraph format settings.
    func testGetParagraphFormat() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphFormatRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphFormat(request: request);
    }

    // Test for getting paragraph format settings without node path.
    func testGetParagraphFormatWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentParagraphsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphFormatWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphFormatWithoutNodePath(request: request);
    }

    // Test for updating  paragraph format settings.
    func testUpdateParagraphFormat() throws {
      let remoteFileName = "TestGetDocumentParagraphs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDto = ParagraphFormatUpdate();
      requestDto.setAlignment(alignment: ParagraphFormatUpdate.Alignment._right);


      let request = UpdateParagraphFormatRequest(name: remoteFileName, dto: requestDto, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateParagraphFormat(request: request);
    }

    // Test for deleting  a paragraph.
    func testDeleteParagraph() throws {
      let remoteFileName = "TestDeleteParagraph.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteParagraph(request: request);
    }

    // Test for deleting  a paragraph without node path.
    func testDeleteParagraphWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteParagraphWithoutNodePath(request: request);
    }

    // Test for getting paragraph list format.
    func testGetParagraphListFormat() throws {
      let remoteFileName = "TestParagraphGetListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphGetListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphListFormatRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphListFormat(request: request);
    }

    // Test for getting paragraph list format without node path.
    func testGetParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestParagraphGetListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphGetListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphListFormatWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphListFormatWithoutNodePath(request: request);
    }

    // Test for updating paragraph list format.
    func testUpdateParagraphListFormat() throws {
      let remoteFileName = "TestUpdateParagraphListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphUpdateListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDto = ListFormatUpdate();
      requestDto.setListId(listId: 2);


      let request = UpdateParagraphListFormatRequest(name: remoteFileName, dto: requestDto, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateParagraphListFormat(request: request);
    }

    // Test for updating paragraph list format without node path.
    func testUpdateParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestUpdateParagraphListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphUpdateListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDto = ListFormatUpdate();
      requestDto.setListId(listId: 2);


      let request = UpdateParagraphListFormatWithoutNodePathRequest(name: remoteFileName, dto: requestDto, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateParagraphListFormatWithoutNodePath(request: request);
    }

    // Test for deleting paragraph list format.
    func testDeleteParagraphListFormat() throws {
      let remoteFileName = "TestDeleteParagraphListFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphDeleteListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphListFormatRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphListFormat(request: request);
    }

    // Test for deleting paragraph list format without node path.
    func testDeleteParagraphListFormatWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphListFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(listFolder + "/ParagraphDeleteListFormat.doc", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphListFormatWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphListFormatWithoutNodePath(request: request);
    }

    // Test for getting paragraph tab stops.
    func testGetParagraphTabStops() throws {
      let remoteFileName = "TestGetParagraphTabStops.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphTabStopsRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphTabStops(request: request);
    }

    // Test for getting paragraph tab stops without node path.
    func testGetParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestGetParagraphTabStopsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetParagraphTabStopsWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getParagraphTabStopsWithoutNodePath(request: request);
    }

    // Test for inserting paragraph tab stop.
    func testInsertParagraphTabStops() throws {
      let remoteFileName = "TestInsertOrUpdateParagraphTabStop.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDto = TabStopInsert();
      requestDto.setAlignment(alignment: TabStopInsert.Alignment._left);
      requestDto.setLeader(leader: TabStopInsert.Leader._none);
      requestDto.setPosition(position: 72);


      let request = InsertOrUpdateParagraphTabStopRequest(name: remoteFileName, dto: requestDto, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().insertOrUpdateParagraphTabStop(request: request);
    }

    // Test for inserting paragraph tab stop without node path.
    func testInsertParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDto = TabStopInsert();
      requestDto.setAlignment(alignment: TabStopInsert.Alignment._left);
      requestDto.setLeader(leader: TabStopInsert.Leader._none);
      requestDto.setPosition(position: 72);


      let request = InsertOrUpdateParagraphTabStopWithoutNodePathRequest(name: remoteFileName, dto: requestDto, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().insertOrUpdateParagraphTabStopWithoutNodePath(request: request);
    }

    // Test for deleting all paragraph tab stops.
    func testDeleteAllParagraphTabStops() throws {
      let remoteFileName = "TestDeleteAllParagraphTabStops.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteAllParagraphTabStopsRequest(name: remoteFileName, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteAllParagraphTabStops(request: request);
    }

    // Test for deleting all paragraph tab stops without node path.
    func testDeleteAllParagraphTabStopsWithoutNodePath() throws {
      let remoteFileName = "TestDeleteAllParagraphTabStopsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteAllParagraphTabStopsWithoutNodePathRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteAllParagraphTabStopsWithoutNodePath(request: request);
    }

    // Test for deleting a tab stops.
    func testDeleteParagraphTabStop() throws {
      let remoteFileName = "TestDeleteParagraphTabStop.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphTabStopRequest(name: remoteFileName, position: 72, nodePath: "", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphTabStop(request: request);
    }

    // Test for deleting a tab stops without node path.
    func testDeleteParagraphTabStopWithoutNodePath() throws {
      let remoteFileName = "TestDeleteParagraphTabStopWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(tabStopFolder + "/ParagraphTabStops.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteParagraphTabStopWithoutNodePathRequest(name: remoteFileName, position: 72, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().deleteParagraphTabStopWithoutNodePath(request: request);
    }
}
