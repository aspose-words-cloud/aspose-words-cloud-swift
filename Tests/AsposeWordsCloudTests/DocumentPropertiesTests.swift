import XCTest
@testable import AsposeWordsCloud

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
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentPropertiesRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentProperties"));
        let actual = try super.getApi().getDocumentProperties(request: request);
        XCTAssert(actual.getDocumentProperties()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentProperty") + "/" + remoteName);
        let propertyName = "Author";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentPropertyRequest(name: remoteName, propertyName: propertyName, folder: getRemoteDataFolder(action: "GetDocumentProperty"));
        let actual = try super.getApi().getDocumentProperty(request: request);
        XCTAssert(actual.getDocumentProperty()?.getName() == propertyName);
    }
    

    func testDeleteDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentProperty") + "/" + remoteName);
        let propertyName = "testProp";
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let deleteRequest = DeleteDocumentPropertyRequest(name: remoteName, propertyName: propertyName, folder: getRemoteDataFolder(action: "DeleteDocumentProperty"), destFileName: destFileName);
        try super.getApi().deleteDocumentProperty(request: deleteRequest);
    }
    
    

    func testUpdateDocumentProperty() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDocumentProperty.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDocumentProperty") + "/" + remoteName);
        let propertyName = "AsposeAuthor";
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = DocumentPropertyCreateOrUpdate()
        body.setValue(value: "Imran Anwar");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = CreateOrUpdateDocumentPropertyRequest(name: remoteName, propertyName: propertyName, property: body, folder: getRemoteDataFolder(action: "UpdateDocumentProperty"), destFileName: destFileName);
        let actual = try super.getApi().createOrUpdateDocumentProperty(request: request);
        XCTAssert(actual.getDocumentProperty()?.getName() == propertyName);
    }
}
