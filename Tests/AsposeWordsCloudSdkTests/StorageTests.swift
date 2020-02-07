import XCTest
@testable import AsposeWordsCloudSdk

class StorageTests: BaseTestContext {
    static var allTests = [
        ("testUploadFile", testUploadFile),
        ("testCopyFile", testCopyFile),
        ("testMoveFile", testMoveFile),
        ("testCreateFolder", testCreateFolder),
        ("testDeleteFolder", testDeleteFolder),
        ("tesGetFileList", tesGetFileList),
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
        
        let request = UploadFileRequest(fileContent: localPath, path: remotePath);
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
    

    func testDeleteFolder() throws {
        // Arrange
        let folderPath = "\(getRemoteDataFolder(action: "CreateFolder"))/TestCreateFolder\(UUID().uuidString)";
        try super.getApi().createFolder(request: CreateFolderRequest(path: folderPath));
        let request = DeleteFolderRequest(path: folderPath);
        // Act && Assert
        try super.getApi().deleteFolder(request: request);
    }
    

    func tesGetFileList() throws {
        // Act && Assert
        let result = try super.getApi().getFilesList(request: GetFilesListRequest(path: super.getRemoteTestDataFolder()));
        XCTAssert(result.getValue()?.count ?? 0 > 0);
    }
}
