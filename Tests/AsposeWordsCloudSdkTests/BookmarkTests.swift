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
        let remoteDir = getRemoteDataFolder("GetBookmarks");
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
        let remoteDir = getRemoteDataFolder("GetBookmarks");
        let fullName = remoteDir + "/" + remoteName;
        let bookmarkName = "aspose";

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new GetBookmarkByNameRequest(remoteName, bookmarkName, this.dataFolder);
        var actual = this.WordsApi.GetBookmarkByName(request);
    }
    
    func testUpdateDocumentBookmark() throws {
        var localName = "test_multi_pages.docx";
        var remoteName = "TestUpdateDocumentBookmark.docx";
        var fullName = Path.Combine(this.dataFolder, remoteName);
        var bookmarkName = "aspose";
        var destFileName = Path.Combine(BaseTestOutPath, remoteName);
        var body = new BookmarkData { Name = bookmarkName, Text = "This will be the text for Aspose" };

        this.UploadFileToStorage(fullName, null, null, File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName));

        var request = new UpdateBookmarkRequest(remoteName, body, bookmarkName, this.dataFolder, destFileName: destFileName);
        var actual = this.WordsApi.UpdateBookmark(request);
    }
}
