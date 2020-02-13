import XCTest
@testable import AsposeWordsCloud

class RangeTests: BaseTestContext {
    static var allTests = [
        ("testGetRangeText", testGetRangeText),
        ("testRemoveRange", testRemoveRange),
        ("testSaveAsRange", testSaveAsRange),
        ("testReplaceWithText", testReplaceWithText),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Range/" + action;
    }

    private let localDataFolder = "DocumentElements/Range";
    
    func testGetRangeText() throws {
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let expectedText = "This is HEADER ";
        let localName = "RangeGet.doc";
        let remoteName = "TestGetRangeText.doc";
        let fullName = (getRemoteDataFolder(action: "GetRangeText") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetRangeTextRequest(name: remoteName, rangeStartIdentifier: rangeStart, rangeEndIdentifier: rangeEnd, folder: getRemoteDataFolder(action: "GetRangeText"));
        let rangeTextResponse = try super.getApi().getRangeText(request: request);
        XCTAssert(expectedText == rangeTextResponse.getText());
    }
    

    func testRemoveRange() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestRemoveRange.doc";
        let fullName = (getRemoteDataFolder(action: "RemoveRange") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let request = RemoveRangeRequest(name: remoteName, rangeStartIdentifier: rangeStart, rangeEndIdentifier: rangeEnd, folder: getRemoteDataFolder(action: "RemoveRange"));
        let actual = try super.getApi().removeRange(request: request);
        XCTAssert(actual.getDocument() != nil);
    }
    

    func testSaveAsRange() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestSaveAsRange.doc";
        let fullName = (getRemoteDataFolder(action: "SaveAsRange") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let newDocName = (getRemoteDataFolder(action: "SaveAsRange") + "/" + "NewDoc.docx");
        
        let rangeDoc = RangeDocument();
        rangeDoc.setDocumentName(documentName: newDocName);
        
        let request = SaveAsRangeRequest(name: remoteName, rangeStartIdentifier: rangeStart, documentParameters: rangeDoc, rangeEndIdentifier: rangeEnd, folder: getRemoteDataFolder(action: "SaveAsRange"));
        _ = try super.getApi().saveAsRange(request: request);
        let result = try super.getApi().downloadFile(request: DownloadFileRequest(path: newDocName));
        XCTAssert(result.count > 0, "Cannot download document from storage");
    }
    

    func testReplaceWithText() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestSaveAsRange.doc";
        let fullName = (getRemoteDataFolder(action: "ReplaceWithText") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let newText = "Replaced header";
        
        let replacement = ReplaceRange();
        replacement.setText(text: newText);
        
        let request = ReplaceWithTextRequest(name: remoteName, rangeStartIdentifier: rangeStart, rangeText: replacement, rangeEndIdentifier: rangeEnd, folder: getRemoteDataFolder(action: "ReplaceWithText"));
        let actual = try super.getApi().replaceWithText(request: request);
        XCTAssert(actual.getDocument() != nil);
    }
}
