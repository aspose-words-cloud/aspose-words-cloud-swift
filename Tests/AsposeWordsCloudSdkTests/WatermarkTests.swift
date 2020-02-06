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
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        let rotationAngle = 0.0;
        let image = "aspose-cloud.png";
        let file = self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(image, isDirectory: false);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertWatermarkImageRequest(name: remoteName,
                                                  imageFile: file,
                                                  folder: getRemoteDataFolder(action: "InsertDocumentWatermarkImage"),
                destFileName: destFileName, rotationAngle: rotationAngle);
        let actual = try super.getApi().insertWatermarkImage(request: request);
    }
    

    func testInsertWatermarkImage() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertWatermarkImage.docx";
        let fullName = (getRemoteDataFolder(action: "InsertWatermarkImage") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        let rotationAngle = 0.0;
        let localImage = "aspose-cloud.png";
        let remoteImage = "TestInsertWatermarkImage.png";
        let fullImagePath = (getRemoteDataFolder(action: "InsertWatermarkImage") + "/" + remoteImage);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localImage, isDirectory: false), path: fullImagePath);
        let request = InsertWatermarkImageRequest(name: remoteName, folder: getRemoteDataFolder(action: "InsertWatermarkImage"), destFileName: destFileName, rotationAngle: rotationAngle, image: fullImagePath);
        let actual = try super.getApi().insertWatermarkImage(request: request);
    }
    

    func testInsertWatermarkText() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertWatermarkText.docx";
        let fullName = (getRemoteDataFolder(action: "InsertWatermarkText") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = WatermarkText();
        body.setText(text: "This is the text");
        body.setRotationAngle(rotationAngle: 90.0);
    
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertWatermarkTextRequest(name: remoteName, watermarkText: body, folder: getRemoteDataFolder(action: "InsertWatermarkText"), destFileName: destFileName);
        let actual = try super.getApi().insertWatermarkText(request: request);
    }
    

    func testDeleteDocumentWatermark() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentWatermark.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentWatermark") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteWatermarkRequest(name: remoteName, folder: getRemoteDataFolder(action: "DeleteDocumentWatermark"), destFileName: destFileName);
        let actual = try super.getApi().deleteWatermark(request: request);
    }
}
