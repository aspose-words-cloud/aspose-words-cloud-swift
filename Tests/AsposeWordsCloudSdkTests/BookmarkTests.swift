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
        
        try super.uploadFile(fileContent: localPath, path: fullName);
        
        let request = GetBookmarksRequest(name: remoteName, folder: getRemoteDataFolder());
        _ = try super.getApi().getBookmarks(request: request);
    }
}
