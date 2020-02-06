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
        ("testCopyFolder", testCopyFolder),
        ("testMoveFolder", testMoveFolder),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Storage/" + action;
    }

    func testUploadFile() throws {
        let localName = "test_multi_pages.docx";
        let remotePath = (RemoteBaseTestDataFolder + "/" + "TestUploadFile.docx");
        using (let ms = MemoryStream(
            File.ReadAllBytes(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + localName)))
        {
            let request = UploadFileRequest(ms, remotePath);
            try super.getApi().uploadFile(request: request);
        }
    }
    

    func testCopyFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (RemoteBaseTestDataFolder + "/" + "TestCopyFileSrc.docx");
        let remoteBasePathDest = (RemoteBaseTestDataFolder + "/" + $"TestCopyFileDest{Guid.NewGuid()}.docx");
        try super.uploadFile(remoteBasePathSrc, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = CopyFileRequest(remoteBasePathDest, remoteBasePathSrc);
        // Act
        try super.getApi().copyFile(request: request);
        // Assert
        using (let result = try super.getApi().downloadFile(DownloadFileRequest(remoteBasePathDest)))
        {
            Assert.IsTrue(result.Length > 0);
        }
    }
    

    func testMoveFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (RemoteBaseTestDataFolder + "/" + "TestMoveFileSrc.docx");
        let remoteBasePathDest = (RemoteBaseTestDataFolder + "/" + $"TestMoveFileDest{Guid.NewGuid()}.docx");
        try super.uploadFile(remoteBasePathSrc, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = MoveFileRequest(remoteBasePathDest, remoteBasePathSrc);
        // Act
        try super.getApi().moveFile(request: request);
        // Assert
        using (let result = try super.getApi().downloadFile(DownloadFileRequest(remoteBasePathDest)))
        {
            Assert.IsTrue(result.Length > 0);
        }
        
        let exc = Assert.Throws<ApiException>(() => try super.getApi().downloadFile(DownloadFileRequest(remoteBasePathSrc)));
        Assert.AreEqual(404, exc.ErrorCode);
    }

    func testCreateFolder() throws {
        let request = CreateFolderRequest($"{this.storageFolder}/TestCreateFolder{Guid.NewGuid()}");
        try super.getApi().createFolder(request: request);
    }
    

    func testDeleteFolder() throws {
        // Arrange
        let folderPath = $"{this.storageFolder}/TestCreateFolder{Guid.NewGuid()}";            
        try super.getApi().createFolder(CreateFolderRequest(folderPath));
        let request = DeleteFolderRequest(folderPath);
        // Act && Assert
        try super.getApi().deleteFolder(request: request);
    }
    

    func tesGetFileList() throws {
        // Act && Assert
        let result = try super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Count > 0);
    }
    

    func testCopyFolder() throws {
        // Arrange
        let folderPathSrc = $"{this.storageFolder}/TestCopyFolderSrc{Guid.NewGuid()}";
        let folderPathDest = $"{this.storageFolder}/TestCopyFolderDest{Guid.NewGuid()}";
        try super.getApi().createFolder(CreateFolderRequest(folderPathSrc));
        
        let request = CopyFolderRequest(folderPathDest, folderPathSrc);
        // Act
        try super.getApi().copyFolder(request: request);
        // Assert
        let result = try super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Any(p => p.Path == $"/{folderPathDest}/"));
    }
    

    func testMoveFolder() throws {
        // Arrange
        let folderPathSrc = $"{this.storageFolder}/TestMoveFolderSrc{Guid.NewGuid()}";
        let folderPathDest = $"{this.storageFolder}/TestMoveFolderDest{Guid.NewGuid()}";
        try super.getApi().createFolder(CreateFolderRequest(folderPathSrc));
        let request = MoveFolderRequest(folderPathDest, folderPathSrc);
        // Act
        try super.getApi().moveFolder(request: request);
        // Assert
        let result = try super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Any(p => p.Path == $"/{folderPathDest}/"));
        Assert.IsFalse(result.Value.Any(p => p.Path == $"/{folderPathSrc}/"));
    }
}
