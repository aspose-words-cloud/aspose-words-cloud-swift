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
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphRequest(remoteName, "sections/0", index, getRemoteDataFolder(action: "GetDocumentParagraphByIndex"));
        let actual = super.getApi().getParagraph(request);
    }
    

    func testGetDocumentParagraphByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "GetDocumentParagraphByIndexWithoutNodePath"));
        let actual = super.getApi().getParagraphWithoutNodePath(request);
    }
    

    func testGetDocumentParagraphs() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphs") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "GetDocumentParagraphs"));
        let actual = super.getApi().getParagraphs(request);
    }
    

    func testGetDocumentParagraphsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePathWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetDocumentParagraphsWithoutNodePath"));
        let actual = super.getApi().getParagraphsWithoutNodePath(request);
    }
    

    func testGetDocumentParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphRequest(remoteName, null, index, getRemoteDataFolder(action: "GetDocumentParagraphWithoutNodePath"));
        let actual = super.getApi().getParagraph(request);
    }
    

    func testGetDocumentParagraphRun() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRun.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRun") + "/" + remoteName);
        let runIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunRequest(remoteName, "paragraphs/0", runIndex, getRemoteDataFolder(action: "GetDocumentParagraphRun"));
        let actual = super.getApi().getRun(request);
    }
    

    func testGetDocumentParagraphRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentParagraphRunFont") + "/" + remoteName);
        let runIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunFontRequest(remoteName, "paragraphs/0", runIndex, getRemoteDataFolder(action: "GetDocumentParagraphRunFont"));
        let actual = super.getApi().getRunFont(request);
    }
    

    func testGetParagraphRuns() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetParagraphRuns.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphRuns") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRunsRequest(remoteName, "sections/0/paragraphs/0", getRemoteDataFolder(action: "GetParagraphRuns"));
        RunsResponse actual = super.getApi().getRuns(request);
    }
    

    func testUpdateRunFont() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateRunFont.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateRunFont") + "/" + remoteName);
        let runIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let fontDto = Font { Bold = true };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateRunFontRequest(remoteName, fontDto, "paragraphs/0", runIndex, getRemoteDataFolder(action: "UpdateRunFont"), destFileName: destFileName);
        let actual = super.getApi().updateRunFont(request);
    }
    

    func testInsertParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "InsertParagraph") + "/" + remoteName);
        let paragraph = ParagraphInsert { Text = "This is a paragraph for your document" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertParagraphRequest(remoteName, paragraph, "sections/0", getRemoteDataFolder(action: "InsertParagraph"));
        let actual = super.getApi().insertParagraph(request);
    }
    

    func testRenderParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraph.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraph") + "/" + remoteName);
        let index = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderParagraphRequest(remoteName, format, null, index, getRemoteDataFolder(action: "RenderParagraph"));
        let actual = super.getApi().renderParagraph(request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while paragraph rendering");
    }
    

    func testRenderParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestRenderParagraphWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderParagraphWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderParagraphWithoutNodePathRequest(remoteName, format, index, getRemoteDataFolder(action: "RenderParagraphWithoutNodePath"));
        let actual = super.getApi().renderParagraphWithoutNodePath(request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while paragraph rendering");
    }
    

    func testGetParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormat") + "/" + remoteName);
        
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        
        let request = GetParagraphFormatRequest(remoteName, null, 0, getRemoteDataFolder(action: "GetParagraphFormat"));
        let actual = super.getApi().getParagraphFormat(request);
    }
    

    func testGetParagraphFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetParagraphFormatWithoutNodePathRequest(remoteName, 0, getRemoteDataFolder(action: "GetParagraphFormatWithoutNodePath"));
        let actual = super.getApi().getParagraphFormatWithoutNodePath(request);
    }
    

    func testUpdateParagraphFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateParagraphFormat") + "/" + remoteName);
        
        let body = ParagraphFormat
                       {
                           Alignment = ParagraphFormat.AlignmentEnum.Right
                       };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateParagraphFormatRequest(remoteName, body, string.Empty, 0, getRemoteDataFolder(action: "UpdateParagraphFormat"));
        let actual = super.getApi().updateParagraphFormat(request);
    }
    

    func testDeleteParagraph() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphs.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraph") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteParagraphRequest(remoteName, null, 0, getRemoteDataFolder(action: "DeleteParagraph"));
        super.getApi().deleteParagraph(request);
    }
    

    func testDeleteParagraphWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentParagraphsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteParagraphWithoutNodePathRequest(remoteName, 0, getRemoteDataFolder(action: "DeleteParagraphWithoutNodePath"));
        super.getApi().deleteParagraphWithoutNodePath(request);
    }
}
