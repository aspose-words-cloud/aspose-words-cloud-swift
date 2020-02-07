import XCTest
@testable import AsposeWordsCloudSdk

class HyperlinkTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentHyperlinkByIndex", testGetDocumentHyperlinkByIndex),
        ("testGetDocumentHyperlinks", testGetDocumentHyperlinks),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Hyperlink/" + action;
    }

    func testGetDocumentHyperlinkByIndex() throws {
        let localName = "test_doc.docx";
        let remoteName = "TestGetDocumentHyperlinkByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentHyperlinkByIndex") + "/" + remoteName);
        let hyperlinkIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentHyperlinkByIndexRequest(name: remoteName, hyperlinkIndex: hyperlinkIndex, folder: getRemoteDataFolder(action: "GetDocumentHyperlinkByIndex"));
        let actual = try super.getApi().getDocumentHyperlinkByIndex(request: request);
        XCTAssert(actual.getHyperlink() != nil);
    }
    

    func testGetDocumentHyperlinks() throws {
        let localName = "test_doc.docx";
        let remoteName = "TestGetDocumentHyperlinks.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentHyperlinks") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentHyperlinksRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentHyperlinks"));
        let actual = try super.getApi().getDocumentHyperlinks(request: request);
        XCTAssert(actual.getHyperlinks()?.getHyperlinkList()?.count ?? 0 > 0);
    }
}
