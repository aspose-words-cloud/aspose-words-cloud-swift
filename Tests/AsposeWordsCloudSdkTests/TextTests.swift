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
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = ReplaceTextParameters { OldValue = "aspose", NewValue = "aspose new" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = ReplaceTextRequest(remoteName, body, this.remoteDataFolder, destFileName: destFileName);
        let actual = try super.getApi().replaceText(request: request);
    }
    

    func testSearch() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestSearch.docx";
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        let pattern = "aspose";
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder()(BaseTestContext.LocalTestDataFolder + "/" + textFolder + "/" + localName));
        let request = SearchRequest(remoteName, pattern, this.remoteDataFolder);
        let actual = try super.getApi().search(request: request);
    }
}
