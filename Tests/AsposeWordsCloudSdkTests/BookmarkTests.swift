import XCTest
@testable import AsposeWordsCloudSdk

class BookmarkTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentBookmarks", testGetDocumentBookmarks),
    ];
    
    func getRemoteDataFolder() -> String {
        return super.getRemoteTestDataFolder() + "DocumentElements/Bookmarks/";
    }
    
    func testGetDocumentBookmarks() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentBookmarks.docx";
        let fullName = getRemoteDataFolder() + remoteName;
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        let req = UploadFileRequest(fileContent: localPath, path: fullName);
        let res = try super.getApi().uploadFile(request: req);
        XCTAssert(res.getErrors()?.count == 0);
        XCTAssert(res.getUploaded()?.count == 1);
        
    }
}
