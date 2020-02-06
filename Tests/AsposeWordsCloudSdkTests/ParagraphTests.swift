import XCTest
@testable import AsposeWordsCloudSdk

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
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Paragraph/" + action;
    }

    private static let fieldFolder = "DocumentElements/Fields";
    
    func testGetDocumentParagraphByIndex() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndex") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphRequest(name: remoteName, nodePath: "sections/0", index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphByIndex"));
        let actual = try super.getApi().getParagraph(request: request);
    }
    

    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath"));
        let actual = try super.getApi().getParagraphWithoutNodePath(request: request);
    }
    

    func testGetDocumentParagraphs() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphs") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "GetDocumentParagraphs"));
        let actual = try super.getApi().getParagraphs(request: request);
    }
    

    func testGetDocumentParagraphsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePathWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath"));
        let actual = try super.getApi().getParagraphsWithoutNodePath(request: request);
    }
    

    func testGetDocumentParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath"));
        let actual = try super.getApi().getParagraph(request: request);
    }
    

    func testGetDocumentParagraphRun() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRun.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRun") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunRequest(name: remoteName, paragraphPath: "paragraphs/0", index: runIndex, folder: getRemoteDataFolder(action: "GetDocumentParagraphRun"));
        let actual = try super.getApi().getRun(request: request);
    }
    

    func testGetDocumentParagraphRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRunFont") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunFontRequest(name: remoteName, paragraphPath: "paragraphs/0", index: runIndex, folder: getRemoteDataFolder(action: "GetDocumentParagraphRunFont"));
        let actual = try super.getApi().getRunFont(request: request);
    }
    

    func testGetParagraphRuns() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetParagraphRuns.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphRuns") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(ParagraphTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRunsRequest(name: remoteName, paragraphPath: "sections/0/paragraphs/0", folder: getRemoteDataFolder(action: "GetParagraphRuns"));
        let actual = try super.getApi().getRuns(request: request);
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
    }
    

    func testGetParagraphFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetParagraphFormatWithoutNodePathRequest(name: remoteName, index: 0, folder: getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath"));
        let actual = try super.getApi().getParagraphFormatWithoutNodePath(request: request);
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
}
