import XCTest
@testable import AsposeWordsCloudSdk

class DocumentPropertiesTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentProperties", testGetDocumentProperties),
        ("testGetDocumentProperty", testGetDocumentProperty),
        ("testDeleteDocumentProperty", testDeleteDocumentProperty),
        ("testUpdateDocumentProperty", testUpdateDocumentProperty),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "DocumentProperties/" + action;
    }

    func testGetDocumentProperties() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentProperties.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentProperties") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentPropertiesRequest(remoteName, getRemoteDataFolder(action: "GetDocumentProperties"));
        let actual = try super.getApi().getDocumentProperties(request: request);            
    }
    

    func testGetDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentProperty") + "/" + remoteName);
        string propertyName = "Author";
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentPropertyRequest(remoteName, propertyName, getRemoteDataFolder(action: "GetDocumentProperty"));
        let actual = try super.getApi().getDocumentProperty(request: request);
    }
    

    func testDeleteDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentProperty") + "/" + remoteName);
        let propertyName = "testProp";
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let deleteRequest = DeleteDocumentPropertyRequest(remoteName, propertyName, getRemoteDataFolder(action: "DeleteDocumentProperty"), destFileName: destFileName);
        try super.getApi().deleteDocumentProperty(deleteRequest);
    }
    
    

    func testUpdateDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDocumentProperty") + "/" + remoteName);
        let propertyName = "AsposeAuthor";
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        DocumentProperty body = DocumentProperty { Name = "Author", Value = "Imran Anwar" };
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = CreateOrUpdateDocumentPropertyRequest(remoteName, propertyName, body, getRemoteDataFolder(action: "UpdateDocumentProperty"), destFileName: destFileName);
        let actual = try super.getApi().createOrUpdateDocumentProperty(request: request);
    }
}
