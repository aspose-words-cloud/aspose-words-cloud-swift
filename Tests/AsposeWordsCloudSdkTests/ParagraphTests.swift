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

    func testGetDocumentParagraphByIndex() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndex") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphRequest(remoteName, "sections/0", index, getRemoteDataFolder(action: "GetDocumentParagraphByIndex"));
        let actual = try super.getApi().getParagraph(request: request);
    }
    

    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath"));
        let actual = try super.getApi().getParagraphWithoutNodePath(request: request);
    }
    

    func testGetDocumentParagraphs() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphs") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "GetDocumentParagraphs"));
        let actual = try super.getApi().getParagraphs(request: request);
    }
    

    func testGetDocumentParagraphsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePathWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath"));
        let actual = try super.getApi().getParagraphsWithoutNodePath(request: request);
    }
    

    func testGetDocumentParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphRequest(remoteName, null, index, getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath"));
        let actual = try super.getApi().getParagraph(request: request);
    }
    

    func testGetDocumentParagraphRun() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRun.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRun") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunRequest(remoteName, "paragraphs/0", runIndex, getRemoteDataFolder(action: "GetDocumentParagraphRun"));
        let actual = try super.getApi().getRun(request: request);
    }
    

    func testGetDocumentParagraphRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRunFont") + "/" + remoteName);
        let runIndex = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunFontRequest(remoteName, "paragraphs/0", runIndex, getRemoteDataFolder(action: "GetDocumentParagraphRunFont"));
        let actual = try super.getApi().getRunFont(request: request);
    }
    

    func testGetParagraphRuns() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetParagraphRuns.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphRuns") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunsRequest(remoteName, "sections/0/paragraphs/0", getRemoteDataFolder(action: "GetParagraphRuns"));
        RunsResponse actual = try super.getApi().getRuns(request: request);
    }
    

    func testUpdateRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateRunFont") + "/" + remoteName);
        let runIndex = 0;
        let destFileName = (super.getRemoteTestOut + "/" + remoteName);
        let fontDto = Font { Bold = true };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateRunFontRequest(remoteName, fontDto, "paragraphs/0", runIndex, getRemoteDataFolder(action: "UpdateRunFont"), destFileName: destFileName);
        let actual = try super.getApi().updateRunFont(request: request);
    }
    

    func testInsertParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "InsertParagraph") + "/" + remoteName);
        let paragraph = ParagraphInsert { Text = "This is a paragraph for your document" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertParagraphRequest(remoteName, paragraph, "sections/0", getRemoteDataFolder(action: "InsertParagraph"));
        let actual = try super.getApi().insertParagraph(request: request);
    }
    

    func testRenderParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraph") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderParagraphRequest(remoteName, format, null, index, getRemoteDataFolder(action: "RenderParagraph"));
        let actual = try super.getApi().renderParagraph(request: request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while paragraph rendering");
    }
    

    func testRenderParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderParagraphWithoutNodePathRequest(remoteName, format, index, getRemoteDataFolder(action: "RenderParagraphWithoutNodePath"));
        let actual = try super.getApi().renderParagraphWithoutNodePath(request: request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while paragraph rendering");
    }
    

    func testGetParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormat") + "/" + remoteName);
        
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        
        let request = GetParagraphFormatRequest(remoteName, null, 0, getRemoteDataFolder(action: "GetParagraphFormat"));
        let actual = try super.getApi().getParagraphFormat(request: request);
    }
    

    func testGetParagraphFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphFormatWithoutNodePathRequest(remoteName, 0, getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath"));
        let actual = try super.getApi().getParagraphFormatWithoutNodePath(request: request);
    }
    

    func testUpdateParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateParagraphFormat") + "/" + remoteName);
        
        let body = ParagraphFormat
                       {
                           Alignment = ParagraphFormat.AlignmentEnum.Right
                       };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateParagraphFormatRequest(remoteName, body, string.Empty, 0, getRemoteDataFolder(action: "UpdateParagraphFormat"));
        let actual = try super.getApi().updateParagraphFormat(request: request);
    }
    

    func testDeleteParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraph") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteParagraphRequest(remoteName, null, 0, getRemoteDataFolder(action: "DeleteParagraph"));
        try super.getApi().deleteParagraph(request: request);
    }
    

    func testDeleteParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteParagraphWithoutNodePathRequest(remoteName, 0, getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath"));
        try super.getApi().deleteParagraphWithoutNodePath(request: request);
    }
}
