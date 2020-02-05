import XCTest
@testable import AsposeWordsCloudSdk

class BookmarkTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentBookmarks", testGetDocumentBookmarks),
        ("testGetDocumentBookmarkByName", testGetDocumentBookmarkByName),
        ("testUpdateDocumentBookmark", testUpdateDocumentBookmark)
    ];
    
    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "DocumentElements/Bookmarks/" + action;
    }
    
    func testGetDocumentBookmarks() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentBookmarks.docx";
        let remoteDir = getRemoteDataFolder(action: "GetBookmarks");
        let fullName = remoteDir + "/" + remoteName;
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);
        
        let request = GetBookmarksRequest(name: remoteName, folder: remoteDir);
        let response = try super.getApi().getBookmarks(request: request);
        XCTAssert(response.getBookmarks()?.getBookmarkList()?.count ?? 0 > 0);
        XCTAssert(response.getBookmarks()?.getLink() != nil);
    }
    
    func testGetDocumentBookmarkByName() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentBookmarkByName.docx";
        let remoteDir = getRemoteDataFolder(action: "GetBookmarkByName");
        let fullName = remoteDir + "/" + remoteName;
        let bookmarkName = "aspose";
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = GetBookmarkByNameRequest(name: remoteName, bookmarkName: bookmarkName, folder: remoteDir);
        let response = try super.getApi().getBookmarkByName(request: request);
        XCTAssert(response.getBookmark()?.getName() == bookmarkName);
    }
    
    func testUpdateDocumentBookmark() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDocumentBookmark.docx";
        let remoteDir = getRemoteDataFolder(action: "UpdateBookmark");
        let fullName = remoteDir + "/" + remoteName;
        let bookmarkName = "aspose";
        let bookmarkText = "This will be the text for Aspose";
        let destFileName = super.getRemoteTestOut() + "/" + remoteName;
        let body = BookmarkData();
        body.setName(name: bookmarkName);
        body.setText(text: bookmarkText);
        
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let request = UpdateBookmarkRequest(name: remoteName, bookmarkData: body, bookmarkName: bookmarkName, folder: remoteDir, destFileName: destFileName);
        let response = try super.getApi().updateBookmark(request: request);
        XCTAssert(response.getBookmark()?.getName() == bookmarkName);
        XCTAssert(response.getBookmark()?.getText() == bookmarkText);
    }
}
