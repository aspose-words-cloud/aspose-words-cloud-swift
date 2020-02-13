import XCTest
@testable import AsposeWordsCloud

class WatermarkTests: BaseTestContext {
    static var allTests = [
        ("testInsertWatermarkImage", testInsertWatermarkImage),
        ("testInsertWatermarkText", testInsertWatermarkText),
        ("testDeleteDocumentWatermark", testDeleteDocumentWatermark),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Watermark/" + action;
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
        XCTAssert(actual.getDocument() != nil);
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
        XCTAssert(actual.getDocument() != nil);
    }
    

    func testDeleteDocumentWatermark() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentWatermark.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentWatermark") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteWatermarkRequest(name: remoteName, folder: getRemoteDataFolder(action: "DeleteDocumentWatermark"), destFileName: destFileName);
        let actual = try super.getApi().deleteWatermark(request: request);
        XCTAssert(actual.getDocument() != nil);
    }
}
