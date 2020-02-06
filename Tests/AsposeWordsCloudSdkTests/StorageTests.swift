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
            super.getApi().uploadFile(request);
        }
    }
    

    func testCopyFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (RemoteBaseTestDataFolder + "/" + "TestCopyFileSrc.docx");
        let remoteBasePathDest = (RemoteBaseTestDataFolder + "/" + $"TestCopyFileDest{Guid.NewGuid()}.docx");
        super.uploadFile(remoteBasePathSrc, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = CopyFileRequest(remoteBasePathDest, remoteBasePathSrc);
        // Act
        super.getApi().copyFile(request);
        // Assert
        using (let result = super.getApi().downloadFile(DownloadFileRequest(remoteBasePathDest)))
        {
            Assert.IsTrue(result.Length > 0);
        }
    }
    

    func testMoveFile() throws {
        // Arrange
        let localName = "test_multi_pages.docx";
        let remoteBasePathSrc = (RemoteBaseTestDataFolder + "/" + "TestMoveFileSrc.docx");
        let remoteBasePathDest = (RemoteBaseTestDataFolder + "/" + $"TestMoveFileDest{Guid.NewGuid()}.docx");
        super.uploadFile(remoteBasePathSrc, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = MoveFileRequest(remoteBasePathDest, remoteBasePathSrc);
        // Act
        super.getApi().moveFile(request);
        // Assert
        using (let result = super.getApi().downloadFile(DownloadFileRequest(remoteBasePathDest)))
        {
            Assert.IsTrue(result.Length > 0);
        }
        
        let exc = Assert.Throws<ApiException>(() => super.getApi().downloadFile(DownloadFileRequest(remoteBasePathSrc)));
        Assert.AreEqual(404, exc.ErrorCode);
    }

    func testCreateFolder() throws {
        let request = CreateFolderRequest($"{this.storageFolder}/TestCreateFolder{Guid.NewGuid()}");
        super.getApi().createFolder(request);
    }
    

    func testDeleteFolder() throws {
        // Arrange
        let folderPath = $"{this.storageFolder}/TestCreateFolder{Guid.NewGuid()}";            
        super.getApi().createFolder(CreateFolderRequest(folderPath));
        let request = DeleteFolderRequest(folderPath);
        // Act && Assert
        super.getApi().deleteFolder(request);
    }
    

    func tesGetFileList() throws {
        // Act && Assert
        let result = super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Count > 0);
    }
    

    func testCopyFolder() throws {
        // Arrange
        let folderPathSrc = $"{this.storageFolder}/TestCopyFolderSrc{Guid.NewGuid()}";
        let folderPathDest = $"{this.storageFolder}/TestCopyFolderDest{Guid.NewGuid()}";
        super.getApi().createFolder(CreateFolderRequest(folderPathSrc));
        
        let request = CopyFolderRequest(folderPathDest, folderPathSrc);
        // Act
        super.getApi().copyFolder(request);
        // Assert
        let result = super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Any(p => p.Path == $"/{folderPathDest}/"));
    }
    

    func testMoveFolder() throws {
        // Arrange
        let folderPathSrc = $"{this.storageFolder}/TestMoveFolderSrc{Guid.NewGuid()}";
        let folderPathDest = $"{this.storageFolder}/TestMoveFolderDest{Guid.NewGuid()}";
        super.getApi().createFolder(CreateFolderRequest(folderPathSrc));
        let request = MoveFolderRequest(folderPathDest, folderPathSrc);
        // Act
        super.getApi().moveFolder(request);
        // Assert
        let result = super.getApi().getFilesList(GetFilesListRequest(this.storageFolder));
        Assert.IsTrue(result.Value.Any(p => p.Path == $"/{folderPathDest}/"));
        Assert.IsFalse(result.Value.Any(p => p.Path == $"/{folderPathSrc}/"));
    }
}
