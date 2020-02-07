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

    private let footnoteFolder = "DocumentElements/Footnotes";
    
    func testInsertFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestInsertFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFootnote") + "/" + remoteName);
        let footNote = Footnote();
        footNote.setFootnoteType(footnoteType: Footnote.FootnoteType.endnote);
        footNote.setText(text: "test endnote");
    
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFootnoteRequest(name: remoteName, footnoteDto: footNote, nodePath: "", folder: getRemoteDataFolder(action: "InsertFootnote"));
        let actual = try super.getApi().insertFootnote(request: request);
        XCTAssert(actual.getFootnote() != nil);
    }
    

    func testInsertFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestInsertFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath") + "/" + remoteName);
        
        let footNote = Footnote();
        footNote.setFootnoteType(footnoteType: Footnote.FootnoteType.endnote);
        footNote.setText(text: "test endnote");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFootnoteWithoutNodePathRequest(name: remoteName, footnoteDto: footNote, folder: getRemoteDataFolder(action: "InsertFootnoteWithoutNodePath"));
        let actual = try super.getApi().insertFootnoteWithoutNodePath(request: request);
        XCTAssert(actual.getFootnote() != nil)
    }
    

    func testDeleteFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnote") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFootnoteRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "DeleteFootnote"));
        try super.getApi().deleteFootnote(request: request);
    }
    

    func testDeleteFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestDeleteFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFootnoteWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "DeleteFootnoteWithoutNodePath"));
        try super.getApi().deleteFootnoteWithoutNodePath(request: request);
    }
    

    func testGetFootnotes() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotes.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotes") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFootnotesRequest(name: remoteName, nodePath: "", folder: getRemoteDataFolder(action: "GetFootnotes"));
        let actual = try super.getApi().getFootnotes(request: request);
        XCTAssert(actual.getFootnotes()?.getList()?.count ?? 0 > 0)
    }
    

    func testGetFootnotesWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnotesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnotesWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFootnotesWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetFootnotesWithoutNodePath"));
        let actual = try super.getApi().getFootnotesWithoutNodePath(request: request);
        XCTAssert(actual.getFootnotes()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnote") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFootnoteRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetFootnote"));
        let actual = try super.getApi().getFootnote(request: request);
        XCTAssert(actual.getFootnote() != nil);
    }
    

    func testGetFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestGetFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFootnoteWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "GetFootnoteWithoutNodePath"));
        let actual = try super.getApi().getFootnoteWithoutNodePath(request: request);
        XCTAssert(actual.getFootnote() != nil);
    }
    

    func testUpdateFootnote() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnote.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnote") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote();
        footnote.setText(text: "text is here");
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFootnoteRequest(name: remoteName, footnoteDto: footnote, nodePath: "", index: index, folder: getRemoteDataFolder(action: "UpdateFootnote"));
        let actual = try super.getApi().updateFootnote(request: request);
        XCTAssert(actual.getFootnote() != nil);
    }
    

    func testUpdateFootnoteWithoutNodePath() throws {
        let localName = "Footnote.doc";
        let remoteName = "TestUpdateFootnoteWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let footnote = Footnote();
        footnote.setText(text: "text is here");
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(footnoteFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFootnoteWithoutNodePathRequest(name: remoteName, footnoteDto: footnote, index: index, folder: getRemoteDataFolder(action: "UpdateFootnoteWithoutNodePath"));
        let actual = try super.getApi().updateFootnoteWithoutNodePath(request: request);
        XCTAssert(actual.getFootnote() != nil);
    }
}
