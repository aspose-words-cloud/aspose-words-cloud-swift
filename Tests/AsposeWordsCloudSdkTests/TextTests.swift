import XCTest
@testable import AsposeWordsCloudSdk

class TextTests: BaseTestContext {
    static var allTests = [
        ("testReplaceText", testReplaceText),
        ("testSearch", testSearch),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Text/" + action;
    }

    func testReplaceText() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestReplaceText.docx";
        let fullName = (getRemoteDataFolder(action: "ReplaceText") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = ReplaceTextParameters();
        body.setOldValue(oldValue: "aspose");
        body.setNewValue(newValue: "aspose new");
        body.setIsMatchCase(isMatchCase: false);
        body.setIsMatchWholeWord(isMatchWholeWord: false);
        body.setIsOldValueRegex(isOldValueRegex: false);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = ReplaceTextRequest(name: remoteName, replaceText: body, folder: getRemoteDataFolder(action: "ReplaceText"), destFileName: destFileName);
        let actual = try super.getApi().replaceText(request: request);
        XCTAssert(actual.getDocumentLink() != nil);
    }
    

    func testSearch() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestSearch.docx";
        let fullName = (getRemoteDataFolder(action: "ReplaceText") + "/" + remoteName);
        let pattern = "aspose";
        
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("DocumentElements/Text", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);
        let request = SearchRequest(name: remoteName, pattern: pattern, folder: getRemoteDataFolder(action: "ReplaceText"));
        let actual = try super.getApi().search(request: request);
        XCTAssert(actual.getSearchResults()?.getResultsList()?.count ?? 0 > 0);
    }
}
