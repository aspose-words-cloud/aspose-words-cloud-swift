import XCTest
@testable import AsposeWordsCloud

class StorageTests: BaseTestContext {
    static var allTests = [
        ("testUploadFile", testUploadFile),
        ("testCopyFile", testCopyFile),
        ("testMoveFile", testMoveFile),
        ("testDeleteFile", testDeleteFile),
        ("testCreateFolder", testCreateFolder),
        ("testDeleteFolder", testDeleteFolder),
        ("testMoveFolder", testMoveFolder),
        ("testCopyFolder", testCopyFolder),
        ("testGetFileList", testGetFileList),
        ("testInitApi", testInitApi),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Storage/" + action;
    }

    func testUploadFile() throws {
        let localName = "test_multi_pages.docx";
        let remotePath = (getRemoteDataFolder(action: "UploadFile") + "/" + "TestUploadFile.docx");
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        let request = UploadFileRequest(fileContent: InputStream(url: localPath)!, path: remotePath);
        let actual = try super.getApi().uploadFile(request: request);
        XCTAssert(actual.getErrors()?.count ?? -1 == 0);
        XCTAssert(actual.getUploaded()?.count ?? 0 == 1);
    }
    

    func testCopyFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (getRemoteDataFolder(action: "CopyFile") + "/" + "TestCopyFileSrc.docx");
        let remoteBasePathDest = (getRemoteDataFolder(action: "CopyFile") + "/" + "TestCopyFileDest\(UUID().uuidString).docx");
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: remoteBasePathSrc);
        let request = CopyFileRequest(destPath: remoteBasePathDest, srcPath: remoteBasePathSrc);
        // Act
        try super.getApi().copyFile(request: request);
        // Assert
        let result = try super.getApi().downloadFile(request: DownloadFileRequest(path: remoteBasePathDest));
        XCTAssert(result.count > 0);
    }
    

    func testMoveFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (getRemoteDataFolder(action: "MoveFile") + "/" + "TestMoveFileSrc.docx");
        let remoteBasePathDest = (getRemoteDataFolder(action: "MoveFile") + "/" + "TestMoveFileDest\(UUID().uuidString).docx");
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: remoteBasePathSrc);
        let request = MoveFileRequest(destPath: remoteBasePathDest, srcPath: remoteBasePathSrc);
        // Act
        try super.getApi().moveFile(request: request);
        // Assert
        let result = try super.getApi().downloadFile(request: DownloadFileRequest(path: remoteBasePathDest));
        XCTAssert(result.count > 0);
    }

    func testCreateFolder() throws {
        let request = CreateFolderRequest(path: "\(getRemoteDataFolder(action: "CreateFolder"))/TestCreateFolder\(UUID().uuidString)");
        try super.getApi().createFolder(request: request);
    }
    
    func testDeleteFile() throws {
        let localName = "test_multi_pages.docx";
        let remotePath = (getRemoteDataFolder(action: "UploadFile") + "/" + "TestUploadFile.docx");
        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent("Common", isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
        
        let request = UploadFileRequest(fileContent: InputStream(url: localPath)!, path: remotePath);
        _ = try super.getApi().uploadFile(request: request);
        
        let requestDel = DeleteFileRequest(path: remotePath);
        try super.getApi().deleteFile(request: requestDel);
    }
    
    func testDeleteFolder() throws {
        // Arrange
        let folderPath = "\(getRemoteDataFolder(action: "CreateFolder"))/TestCreateFolder\(UUID().uuidString)";
        try super.getApi().createFolder(request: CreateFolderRequest(path: folderPath));
        let request = DeleteFolderRequest(path: folderPath);
        // Act && Assert
        try super.getApi().deleteFolder(request: request);
    }
    
    func testMoveFolder() throws {
        // Arrange
        let request1 = CreateFolderRequest(path: "\(getRemoteDataFolder(action: "MoveFolder"))/TestCreateFolder1\(UUID().uuidString)");
        try super.getApi().createFolder(request: request1);
        
        let request2 = MoveFolderRequest(destPath: "\(getRemoteDataFolder(action: "MoveFolder"))/TestCreateFolder2\(UUID().uuidString)", srcPath: request1.getPath());
        // Act
        try super.getApi().moveFolder(request: request2);
    }
    
    func testCopyFolder() throws {
        // Arrange
        let request1 = CreateFolderRequest(path: "\(getRemoteDataFolder(action: "CopyFolder"))/TestCreateFolder1\(UUID().uuidString)");
        try super.getApi().createFolder(request: request1);
        
        let request2 = CopyFolderRequest(destPath: "\(getRemoteDataFolder(action: "CopyFolder"))/TestCreateFolder2\(UUID().uuidString)", srcPath: request1.getPath());
        // Act
        try super.getApi().copyFolder(request: request2);
    }
    
    func testGetFileList() throws {
        // Act && Assert
        let result = try super.getApi().getFilesList(request: GetFilesListRequest(path: super.getRemoteTestDataFolder()));
        XCTAssert(result.getValue()?.count ?? 0 > 0);
    }
    
    func testInitApi() throws {
        let newApi = WordsAPI(appSid: "", appKey: "");
        let req = CreateDocumentRequest(storage: nil, fileName: "tmp.doc", folder: nil);
        XCTAssertThrowsError(try newApi.createDocument(request: req));
    }
}
