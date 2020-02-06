import XCTest
@testable import AsposeWordsCloudSdk

class WatermarkTests: BaseTestContext {
    static var allTests = [
        ("testInsertDocumentWatermarkImage", testInsertDocumentWatermarkImage),
        ("testInsertWatermarkImage", testInsertWatermarkImage),
        ("testInsertWatermarkText", testInsertWatermarkText),
        ("testDeleteDocumentWatermark", testDeleteDocumentWatermark),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Watermark/" + action;
    }

    func testInsertDocumentWatermarkImage() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertDocumentWatermarkImage.docx";
        let fullName = (getRemoteDataFolder(action: "InsertDocumentWatermarkImage") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        double rotationAngle = 0F;
        let image = "aspose-cloud.png";
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + image))
        {
            try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
            let request = InsertWatermarkImageRequest(remoteName,
                file,
                getRemoteDataFolder(action: "InsertDocumentWatermarkImage"),
                rotationAngle: rotationAngle,
                destFileName: destFileName);
            let actual = try super.getApi().insertWatermarkImage(request: request);
        }
    }
    

    func testInsertWatermarkImage() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertWatermarkImage.docx";
        let fullName = (getRemoteDataFolder(action: "InsertWatermarkImage") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        double rotationAngle = 0F;
        let localImage = "aspose-cloud.png";
        let remoteImage = "TestInsertWatermarkImage.png";
        let fullImagePath = (getRemoteDataFolder(action: "InsertWatermarkImage") + "/" + remoteImage);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        try super.uploadFile(fullImagePath, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true) + localImage);
        let request = InsertWatermarkImageRequest(remoteName, folder: getRemoteDataFolder(action: "InsertWatermarkImage"), image: fullImagePath, rotationAngle: rotationAngle, destFileName: destFileName);
        let actual = try super.getApi().insertWatermarkImage(request: request);
    }
    

    func testInsertWatermarkText() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertWatermarkText.docx";
        let fullName = (getRemoteDataFolder(action: "InsertWatermarkText") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = WatermarkText { Text = "This is the text", RotationAngle = 90.0f };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertWatermarkTextRequest(remoteName, body, getRemoteDataFolder(action: "InsertWatermarkText"), destFileName: destFileName);
        let actual = try super.getApi().insertWatermarkText(request: request);
    }
    

    func testDeleteDocumentWatermark() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentWatermark.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentWatermark") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteWatermarkRequest(remoteName, getRemoteDataFolder(action: "DeleteDocumentWatermark"), destFileName: destFileName);
        let actual = try super.getApi().deleteWatermark(request: request);
    }
}
