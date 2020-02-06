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
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFootnoteRequest(remoteName, footNote, null, getRemoteDataFolder(action: "InsertFootnote"));
        let actual = super.getApi().insertFootnote(request);
    }
    

    func testInsertFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestInsertFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath") + "/" + remoteName);
        let footNote = Footnote { FootnoteType = Footnote.FootnoteTypeEnum.Endnote, Text = "test endnote" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFootnoteWithoutNodePathRequest(remoteName, footNote, getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath"));
        let actual = super.getApi().insertFootnoteWithoutNodePath(request);
    }
    

    func testDeleteFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnote") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFootnoteRequest(remoteName, null, index, getRemoteDataFolder(action: "DeleteFootnote"));
        super.getApi().deleteFootnote(request);
    }
    

    func testDeleteFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFootnoteWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath"));
        super.getApi().deleteFootnoteWithoutNodePath(request);
    }
    

    func testGetFootnotes() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotes.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotes") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnotesRequest(remoteName, null, getRemoteDataFolder(action: "GetFootnotes"));
        let actual = super.getApi().getFootnotes(request);
    }
    

    func testGetFootnotesWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotesWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnotesWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetFootnotesWithoutNodePath"));
        let actual = super.getApi().getFootnotesWithoutNodePath(request);
    }
    

    func testGetFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnote") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnoteRequest(remoteName, null, index, getRemoteDataFolder(action: "GetFootnote"));
        let actual = super.getApi().getFootnote(request);
    }
    

    func testGetFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFootnoteWithoutNodePathRequest(remoteName, index, getRemoteDataFolder(action: "GetFootnoteWithoutNodePath"));
        let actual = super.getApi().getFootnoteWithoutNodePath(request);
    }
    

    func testUpdateFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnote") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote { Text = "text is here" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFootnoteRequest(remoteName, footnote, null, index, getRemoteDataFolder(action: "UpdateFootnote"));
        let actual = super.getApi().updateFootnote(request);
    }
    

    func testUpdateFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote { Text = "text is here" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFootnoteWithoutNodePathRequest(remoteName, footnote, index, getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath"));
        let actual = super.getApi().updateFootnoteWithoutNodePath(request);
    }
}
