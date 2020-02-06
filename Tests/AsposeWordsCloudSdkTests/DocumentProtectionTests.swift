import XCTest
@testable import AsposeWordsCloudSdk

class DocumentProtectionTests: BaseTestContext {
    static var allTests = [
        ("testProtectDocument", testProtectDocument),
        ("testGetDocumentProtection", testGetDocumentProtection),
        ("testChangeDocumentProtection", testChangeDocumentProtection),
        ("testDeleteUnprotectDocument", testDeleteUnprotectDocument),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "DocumentProtection/" + action;
    }

    func testProtectDocument() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestProtectDocument.docx";
        let fullName = (getRemoteDataFolder(action: "ProtectDocument") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut + "/" + remoteName);
        let body = ProtectionRequest { NewPassword = "123" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = ProtectDocumentRequest(remoteName, body, getRemoteDataFolder(action: "ProtectDocument"), destFileName: destFileName);
        let actual = try super.getApi().protectDocument(request: request);
    }
    

    func testGetDocumentProtection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentProtection.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentProtection") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentProtectionRequest(remoteName, getRemoteDataFolder(action: "GetDocumentProtection"));
        let actual = try super.getApi().getDocumentProtection(request: request);
    }
    

    func testChangeDocumentProtection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestChangeDocumentProtection.docx";
        let fullName = (getRemoteDataFolder(action: "ChangeDocumentProtection") + "/" + remoteName);
        let body = ProtectionRequest { NewPassword = string.Empty };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = ProtectDocumentRequest(remoteName, body, getRemoteDataFolder(action: "ChangeDocumentProtection"));
        let actual = try super.getApi().protectDocument(request: request);            
    }
    

    func testDeleteUnprotectDocument() throws {
        let localName = "SampleProtectedBlankWordDocument.docx";
        let remoteName = "TestDeleteUnprotectDocument.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteUnprotectDocument") + "/" + remoteName);
        let body = ProtectionRequest { Password = "aspose" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.protectionFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UnprotectDocumentRequest(remoteName, body, getRemoteDataFolder(action: "DeleteUnprotectDocument"));
        let actual = try super.getApi().unprotectDocument(request: request);            
    }
}
