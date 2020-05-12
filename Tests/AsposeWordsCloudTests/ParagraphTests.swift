import XCTest
@testable import AsposeWordsCloud

class ParagraphTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentParagraphByIndex", testGetDocumentParagraphByIndex),
        ("testGetDocumentParagraphByIndexWithoutNodePath", testGetDocumentParagraphByIndexWithoutNodePath),
        ("testGetDocumentParagraphs", testGetDocumentParagraphs),
        ("testGetDocumentParagraphsWithoutNodePath", testGetDocumentParagraphsWithoutNodePath),
        ("testGetDocumentParagraphWithoutNodePath", testGetDocumentParagraphWithoutNodePath),
        ("testGetDocumentParagraphRun", testGetDocumentParagraphRun),
        ("testGetDocumentParagraphRunFont", testGetDocumentParagraphRunFont),
        ("testGetParagraphRuns", testGetParagraphRuns),
        ("testUpdateRunFont", testUpdateRunFont),
        ("testInsertParagraph", testInsertParagraph),
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
        ("testDeleteParagraphListFormat", testDeleteParagraphListFormat),
        ("testGetParagraphTabStops", testGetParagraphTabStops),	
        ("testInsertOrUpdateParagraphTabStop", testInsertOrUpdateParagraphTabStop),
        ("testDeleteAllParagraphTabStops", testDeleteAllParagraphTabStops),	
        ("testDeleteParagraphTabStop", testDeleteParagraphTabStop),		
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Paragraph/" + action;
    }

    private static let fieldFolder = "DocumentElements/Fields";
    private static let listFolder = "DocumentElements/ParagraphListFormat";
	private static let tabStopFolder = "DocumentElements/Paragraphs";
    
    func testGetDocumentParagraphByIndex() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndex") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphRequest(name: remoteName, nodePath: "sections/0", index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphByIndex"));
        let actual = try super.getApi().getParagraph(request: request);
        XCTAssert(actual.getParagraph() != nil);
    }
    

    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath"));
        let actual = try super.getApi().getParagraphWithoutNodePath(request: request);
        XCTAssert(actual.getParagraph() != nil);
    }
    

    func testGetDocumentParagraphs() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphs") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "GetDocumentParagraphs"));
        let actual = try super.getApi().getParagraphs(request: request);
        XCTAssert(actual.getParagraphs()?.getParagraphLinkList()?.count ?? 0 > 0);
    }
    

    func testGetDocumentParagraphsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePathWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath"));
        let actual = try super.getApi().getParagraphsWithoutNodePath(request: request);
        XCTAssert(actual.getParagraphs()?.getParagraphLinkList()?.count ?? 0 > 0);
    }
    

    func testGetDocumentParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath"));
        let actual = try super.getApi().getParagraph(request: request);
        XCTAssert(actual.getParagraph() != nil);
    }
    

    func testGetDocumentParagraphRun() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRun.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRun") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunRequest(name: remoteName, paragraphPath: "paragraphs/0", index: runIndex, folder: getRemoteDataFolder(action: "GetDocumentParagraphRun"));
        let actual = try super.getApi().getRun(request: request);
        XCTAssert(actual.getRun() != nil);
    }
    

    func testGetDocumentParagraphRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRunFont") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunFontRequest(name: remoteName, paragraphPath: "paragraphs/0", index: runIndex, folder: getRemoteDataFolder(action: "GetDocumentParagraphRunFont"));
        let actual = try super.getApi().getRunFont(request: request);
        XCTAssert(actual.getFont() != nil);
    }
    

    func testGetParagraphRuns() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetParagraphRuns.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphRuns") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunsRequest(name: remoteName, paragraphPath: "sections/0/paragraphs/0", folder: getRemoteDataFolder(action: "GetParagraphRuns"));
        let actual = try super.getApi().getRuns(request: request);
        XCTAssert(actual.getRuns()?.getList()?.count ?? 0 > 0);
    }
    

    func testUpdateRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateRunFont") + "/" + remoteName);
        let runIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let fontDto = Font();
        fontDto.setBold(bold: true);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateRunFontRequest(name: remoteName, fontDto: fontDto, paragraphPath: "paragraphs/0", index: runIndex, folder: getRemoteDataFolder(action: "UpdateRunFont"), destFileName: destFileName);
        let actual = try super.getApi().updateRunFont(request: request);
        XCTAssert(actual.getFont() != nil);
    }
    

    func testInsertParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "InsertParagraph") + "/" + remoteName);
        
        let paragraph = ParagraphInsert();
        paragraph.setText(text: "This is a paragraph for your document");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertParagraphRequest(name: remoteName, paragraph: paragraph, nodePath: "sections/0", folder: getRemoteDataFolder(action: "InsertParagraph"));
        let actual = try super.getApi().insertParagraph(request: request);
        XCTAssert(actual.getParagraph() != nil);
    }
    

    func testRenderParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraph") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderParagraphRequest(name: remoteName, format: format, nodePath: "", index: index, folder: getRemoteDataFolder(action: "RenderParagraph"));
        let actual = try super.getApi().renderParagraph(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while paragraph rendering");
    }
    

    func testRenderParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderParagraphWithoutNodePathRequest(name: remoteName, format: format, index: index, folder: getRemoteDataFolder(action: "RenderParagraphWithoutNodePath"));
        let actual = try super.getApi().renderParagraphWithoutNodePath(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while paragraph rendering");
    }
    

    func testGetParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormat") + "/" + remoteName);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let request = GetParagraphFormatRequest(name: remoteName, nodePath: "", index: 0, folder: getRemoteDataFolder(action: "GetParagraphFormat"));
        let actual = try super.getApi().getParagraphFormat(request: request);
        XCTAssert(actual.getParagraphFormat() != nil);
    }
    

    func testGetParagraphFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphFormatWithoutNodePathRequest(name: remoteName, index: 0, folder: getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath"));
        let actual = try super.getApi().getParagraphFormatWithoutNodePath(request: request);
        XCTAssert(actual.getParagraphFormat() != nil);
    }
    

    func testUpdateParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateParagraphFormat") + "/" + remoteName);
        
        let body = ParagraphFormat();
        body.setAlignment(alignment: ParagraphFormat.Alignment._right);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateParagraphFormatRequest(name: remoteName, dto: body, nodePath: "", index: 0, folder: getRemoteDataFolder(action: "UpdateParagraphFormat"));
        let actual = try super.getApi().updateParagraphFormat(request: request);
        XCTAssert(actual.getParagraphFormat() != nil);
    }
    

    func testDeleteParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraph") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteParagraphRequest(name: remoteName, nodePath: "", index: 0, folder: getRemoteDataFolder(action: "DeleteParagraph"));
        try super.getApi().deleteParagraph(request: request);
    }
    

    func testDeleteParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteParagraphWithoutNodePathRequest(name: remoteName, index: 0, folder: getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath"));
        try super.getApi().deleteParagraphWithoutNodePath(request: request);
    }
    
    func testGetParagraphListFormat() throws {
        let localName = "ParagraphGetListFormat.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphListFormat") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.listFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphListFormatRequest(name: localName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetParagraphListFormat"));
        _ = try super.getApi().getParagraphListFormat(request: request);
    }
    
    func testGetParagraphListFormatWithoutNodePath() throws {
        let localName = "ParagraphGetListFormat.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphListFormatWithoutNodePath") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.listFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphListFormatWithoutNodePathRequest(name: localName, index: index, folder: getRemoteDataFolder(action: "GetParagraphListFormatWithoutNodePath"));
        _ = try super.getApi().getParagraphListFormatWithoutNodePath(request: request);
    }
    
    func testUpdateParagraphListFormat() throws {
        let localName = "ParagraphUpdateListFormat.doc";
        let fullName = (getRemoteDataFolder(action: "UpdateParagraphListFormat") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.listFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let dto = ListFormatUpdate();
        dto.setListId(listId: 2);
        let request = UpdateParagraphListFormatRequest(name: localName, dto: dto, nodePath: "", index: index, folder: getRemoteDataFolder(action: "UpdateParagraphListFormat"));
        _ = try super.getApi().updateParagraphListFormat(request: request);
    }
    
    func testDeleteParagraphListFormat() throws {
        let localName = "ParagraphDeleteListFormat.doc";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphListFormat") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.listFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteParagraphListFormatRequest(name: localName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "DeleteParagraphListFormat"));
        _ = try super.getApi().deleteParagraphListFormat(request: request);
    }
	
    func testGetParagraphTabStops() throws {
        let localName = "ParagraphTabStops.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphTabStops") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.tabStopFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphTabStopsRequest(name: localName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetParagraphTabStops"));
        _ = try super.getApi().getParagraphTabStops(request: request);
    }
	
    func testInsertOrUpdateParagraphTabStop() throws {
        let localName = "ParagraphTabStops.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphTabStops") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.tabStopFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
		let dto = TabStopInsert();
		dto.setAlignment(alignment: TabStopBase.Alignment._right);
		dto.setLeader(leader: TabStopBase.Leader._none);
		dto.setPosition(position: 72);
        let request = InsertOrUpdateParagraphTabStopRequest(name: localName,nodePath: "", dto: dto, index: index, folder: getRemoteDataFolder(action: "GetParagraphTabStops"));
        _ = try super.getApi().insertOrUpdateParagraphTabStop(request: request);
    }
	
    func testDeleteAllParagraphTabStops() throws {
        let localName = "ParagraphTabStops.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphTabStops") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.tabStopFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteAllParagraphTabStopsRequest(name: localName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetParagraphTabStops"));
        _ = try super.getApi().deleteAllParagraphTabStops(request: request);
    }
	
    func testDeleteParagraphTabStop() throws {
        let localName = "ParagraphTabStops.doc";
        let fullName = (getRemoteDataFolder(action: "GetParagraphTabStops") + "/" + localName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.tabStopFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteParagraphTabStopRequest(name: localName, nodePath: "", position: 72, index: index, folder: getRemoteDataFolder(action: "GetParagraphTabStops"));
        _ = try super.getApi().deleteParagraphTabStop(request: request);
    }
}
