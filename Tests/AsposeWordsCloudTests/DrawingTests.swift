import XCTest
@testable import AsposeWordsCloud

class DrawingTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentDrawingObjects", testGetDocumentDrawingObjects),
        ("testGetDocumentDrawingObjectsWithoutNodePath", testGetDocumentDrawingObjectsWithoutNodePath),
        ("testGetDocumentDrawingObjectByIndex", testGetDocumentDrawingObjectByIndex),
        ("testGetDocumentDrawingObjectByIndexWithoutNodePath", testGetDocumentDrawingObjectByIndexWithoutNodePath),
        ("testGetDocumentDrawingObjectByIndexWithFormat", testGetDocumentDrawingObjectByIndexWithFormat),
        ("testGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath", testGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath),
        ("testGetDocumentDrawingObjectImageData", testGetDocumentDrawingObjectImageData),
        ("testGetDocumentDrawingObjectImageDataWithoutNodePath", testGetDocumentDrawingObjectImageDataWithoutNodePath),
        ("testGetDocumentDrawingObjectOleData", testGetDocumentDrawingObjectOleData),
        ("testGetDocumentDrawingObjectOleDataWithoutNodePath", testGetDocumentDrawingObjectOleDataWithoutNodePath),
        ("testInsertDrawingObject", testInsertDrawingObject),
        ("testInsetDrawingObjectWithoutNodePath", testInsetDrawingObjectWithoutNodePath),
        ("testDeleteDrawingObject", testDeleteDrawingObject),
        ("testDeleteDrawingObjectWithoutNodePath", testDeleteDrawingObjectWithoutNodePath),
        ("testUpdateDrawingObject", testUpdateDrawingObject),
        ("testUpdateDrawingObjectWithoutNodePath", testUpdateDrawingObjectWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Drawing/" + action;
    }

    func testGetDocumentDrawingObjects() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjects.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjects") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "GetDocumentDrawingObjects"));
        let actual = try super.getApi().getDocumentDrawingObjects(request: request);
        XCTAssert(actual.getDrawingObjects()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetDocumentDrawingObjectsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectsWithoutNodePath"));
        let actual = try super.getApi().getDocumentDrawingObjectsWithoutNodePath(request: request);
        XCTAssert(actual.getDrawingObjects()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetDocumentDrawingObjectByIndex() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndex") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectByIndexRequest(name: remoteName, nodePath: "sections/0", index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndex"));
        let actual = try super.getApi().getDocumentDrawingObjectByIndex(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
    

    func testGetDocumentDrawingObjectByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectByIndexWithoutNodePathRequest(name: remoteName, index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithoutNodePath"));
        let actual = try super.getApi().getDocumentDrawingObjectByIndexWithoutNodePath(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
    

    func testGetDocumentDrawingObjectByIndexWithFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormat") + "/" + remoteName);
        let objectIndex = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderDrawingObjectRequest(name: remoteName, format: format, nodePath: "sections/0", index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormat"));
        let result = try super.getApi().renderDrawingObject(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormatWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderDrawingObjectWithoutNodePathRequest(name: remoteName, format: format, index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormatWithoutNodePath"));
        let result = try super.getApi().renderDrawingObjectWithoutNodePath(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectImageData() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectImageData.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectImageData") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectImageDataRequest(name: remoteName, nodePath: "sections/0", index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectImageData"));
        let result = try super.getApi().getDocumentDrawingObjectImageData(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectImageDataWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectImageDataWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectImageDataWithoutNodePathRequest(name: remoteName, index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectImageDataWithoutNodePath"));
        let result = try super.getApi().getDocumentDrawingObjectImageDataWithoutNodePath(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectOleData() throws {
        let localName = "sample_EmbeddedOLE.docx";
        let remoteName = "TestGetDocumentDrawingObjectOleData.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectOleData") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("DocumentElements/DrawingObjects", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectOleDataRequest(name: remoteName, nodePath: "sections/0", index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectOleData"));
        let result = try super.getApi().getDocumentDrawingObjectOleData(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectOleDataWithoutNodePath() throws {
        let localName = "sample_EmbeddedOLE.docx";
        let remoteName = "TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectOleDataWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("DocumentElements/DrawingObjects", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetDocumentDrawingObjectOleDataWithoutNodePathRequest(name: remoteName, index: objectIndex, folder: getRemoteDataFolder(action: "GetDocumentDrawingObjectOleDataWithoutNodePath"));
        let result = try super.getApi().getDocumentDrawingObjectOleDataWithoutNodePath(request: request);
        XCTAssert(result.count > 0, "Error occurred while getting drawing object");
    }
    

    func testInsertDrawingObject() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsetDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "") + "/" + remoteName);
        let image = "aspose-cloud.png";
        let file = self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(image, isDirectory: false);
        let request = InsertDrawingObjectRequest(name: remoteName, drawingObject: "{\"Left\": 0}", imageFile: InputStream(url: file)!, nodePath: "", folder: getRemoteDataFolder(action: ""));
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let actual = try super.getApi().insertDrawingObject(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
    

    func testInsetDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsetDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsetDrawingObjectWithoutNodePath") + "/" + remoteName);
        let image = "aspose-cloud.png";
        let file = self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(image, isDirectory: false);
        let request = InsertDrawingObjectWithoutNodePathRequest(name: remoteName, drawingObject: "{\"Left\": 0}", imageFile: InputStream(url: file)!, folder: getRemoteDataFolder(action: "InsetDrawingObjectWithoutNodePath"));
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let actual = try super.getApi().insertDrawingObjectWithoutNodePath(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
    

    func testDeleteDrawingObject() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDrawingObject") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteDrawingObjectRequest(name: remoteName, nodePath: "", index: objectIndex, folder: getRemoteDataFolder(action: "DeleteDrawingObject"));
        try super.getApi().deleteDrawingObject(request: request);
    }
    

    func testDeleteDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDrawingObjectWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteDrawingObjectWithoutNodePathRequest(name: remoteName, index: objectIndex, folder: getRemoteDataFolder(action: "DeleteDrawingObjectWithoutNodePath"));
        try super.getApi().deleteDrawingObjectWithoutNodePath(request: request);
    }
    

    func testUpdateDrawingObject() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDrawingObject") + "/" + remoteName);
        let image = "aspose-cloud.png";
        let file = self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(image, isDirectory: false);
        let request = UpdateDrawingObjectRequest(name: remoteName, drawingObject: "{\"Left\": 0}", imageFile: InputStream(url: file)!, nodePath: "", index: 0, folder: getRemoteDataFolder(action: "UpdateDrawingObject"));
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let actual = try super.getApi().updateDrawingObject(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
    

    func testUpdateDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDrawingObjectWithoutNodePath") + "/" + remoteName);
        let image = "aspose-cloud.png";
        let file = self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(image, isDirectory: false);
        let request = UpdateDrawingObjectWithoutNodePathRequest(name: remoteName, drawingObject: "{\"Left\": 0}", imageFile: InputStream(url: file)!, index: 0, folder: getRemoteDataFolder(action: "UpdateDrawingObjectWithoutNodePath"));
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let actual = try super.getApi().updateDrawingObjectWithoutNodePath(request: request);
        XCTAssert(actual.getDrawingObject() != nil);
    }
}
