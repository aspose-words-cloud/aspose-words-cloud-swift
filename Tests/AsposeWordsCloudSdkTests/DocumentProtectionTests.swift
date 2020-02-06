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
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = ProtectionRequest();
        body.setNewPassword(newPassword: "123");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = ProtectDocumentRequest(name: remoteName, protectionRequest: body, folder: getRemoteDataFolder(action: "ProtectDocument"), destFileName: destFileName);
        let actual = try super.getApi().protectDocument(request: request);
    }
    

    func testGetDocumentProtection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentProtection.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentProtection") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentProtectionRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentProtection"));
        let actual = try super.getApi().getDocumentProtection(request: request);
    }
    

    func testChangeDocumentProtection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestChangeDocumentProtection.docx";
        let fullName = (getRemoteDataFolder(action: "ChangeDocumentProtection") + "/" + remoteName);
        
        let body = ProtectionRequest();
        body.setNewPassword(newPassword: "");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = ProtectDocumentRequest(name: remoteName, protectionRequest: body, folder: getRemoteDataFolder(action: "ChangeDocumentProtection"));
        let actual = try super.getApi().protectDocument(request: request);            
    }
    

    func testDeleteUnprotectDocument() throws {
        let localName = "SampleProtectedBlankWordDocument.docx";
        let remoteName = "TestDeleteUnprotectDocument.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteUnprotectDocument") + "/" + remoteName);
        
        let body = ProtectionRequest();
        body.setPassword(password: "aspose");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("DocumentActions", isDirectory: true).appendingPathComponent("DocumentProtection", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UnprotectDocumentRequest(name: remoteName, protectionRequest: body, folder: getRemoteDataFolder(action: "DeleteUnprotectDocument"));
        let actual = try super.getApi().unprotectDocument(request: request);            
    }
}
