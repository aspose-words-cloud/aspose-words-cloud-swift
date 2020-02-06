import XCTest
@testable import AsposeWordsCloudSdk

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
        ("testUpdateFootnoteWithoutNodePath", testUpdateFootnoteWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Footnote/" + action;
    }

    func testInsertFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestInsertFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFootnote") + "/" + remoteName);
        let footNote = Footnote { FootnoteType = Footnote.FootnoteTypeEnum.Endnote, Text = "test endnote" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFootnoteRequest(remoteName, footNote, null, getRemoteDataFolder(action: "InsertFootnote"));
        let actual = try super.getApi().insertFootnote(request: request);
    }
    

    func testInsertFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestInsertFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath") + "/" + remoteName);
        let footNote = Footnote { FootnoteType = Footnote.FootnoteTypeEnum.Endnote, Text = "test endnote" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFootnoteWithoutNodePathRequest(remoteName, footNote, getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath"));
        let actual = try super.getApi().insertFootnoteWithoutNodePath(request: request);
    }
    

    func testDeleteFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnote") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFootnoteRequest(remoteName, null, index, getRemoteDataFolder(action: "DeleteFootnote"));
        try super.getApi().deleteFootnote(request: request);
    }
    

    func testDeleteFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFootnoteWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath"));
        try super.getApi().deleteFootnoteWithoutNodePath(request: request);
    }
    

    func testGetFootnotes() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotes.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotes") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnotesRequest(remoteName, null, getRemoteDataFolder(action: "GetFootnotes"));
        let actual = try super.getApi().getFootnotes(request: request);
    }
    

    func testGetFootnotesWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotesWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnotesWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetFootnotesWithoutNodePath"));
        let actual = try super.getApi().getFootnotesWithoutNodePath(request: request);
    }
    

    func testGetFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnote") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnoteRequest(remoteName, null, index, getRemoteDataFolder(action: "GetFootnote"));
        let actual = try super.getApi().getFootnote(request: request);
    }
    

    func testGetFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnoteWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "GetFootnoteWithoutNodePath"));
        let actual = try super.getApi().getFootnoteWithoutNodePath(request: request);
    }
    

    func testUpdateFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnote") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote { Text = "text is here" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFootnoteRequest(remoteName, footnote, null, index, getRemoteDataFolder(action: "UpdateFootnote"));
        let actual = try super.getApi().updateFootnote(request: request);
    }
    

    func testUpdateFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote { Text = "text is here" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFootnoteWithoutNodePathRequest(remoteName, footnote, index, getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath"));
        let actual = try super.getApi().updateFootnoteWithoutNodePath(request: request);
    }
}
