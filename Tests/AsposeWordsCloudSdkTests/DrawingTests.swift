import XCTest
@testable import AsposeWordsCloudSdk

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
        ("", ),
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
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "GetDocumentDrawingObjects"));
        let actual = super.getApi().getDocumentDrawingObjects(request);
    }
    

    func testGetDocumentDrawingObjectsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectsWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetDocumentDrawingObjectsWithoutNodePath"));
        let actual = super.getApi().getDocumentDrawingObjectsWithoutNodePath(request);
    }
    

    func testGetDocumentDrawingObjectByIndex() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndex.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndex") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectByIndexRequest(remoteName, "sections/0", objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndex"));
        DrawingObjectResponse actual = super.getApi().getDocumentDrawingObjectByIndex(request);
    }
    

    func testGetDocumentDrawingObjectByIndexWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectByIndexWithoutNodePathRequest(remoteName, objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithoutNodePath"));
        DrawingObjectResponse actual = super.getApi().getDocumentDrawingObjectByIndexWithoutNodePath(request);
    }
    

    func testGetDocumentDrawingObjectByIndexWithFormat() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormat") + "/" + remoteName);
        let objectIndex = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderDrawingObjectRequest(remoteName, format, "sections/0", objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormat"));
        let result = super.getApi().renderDrawingObject(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormatWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderDrawingObjectWithoutNodePathRequest(remoteName, format, objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectByIndexWithFormatWithoutNodePath"));
        let result = super.getApi().renderDrawingObjectWithoutNodePath(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectImageData() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectImageData.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectImageData") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectImageDataRequest(remoteName, "sections/0", objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectImageData"));
        let result = super.getApi().getDocumentDrawingObjectImageData(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectImageDataWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectImageDataWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectImageDataWithoutNodePathRequest(remoteName, objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectImageDataWithoutNodePath"));
        let result = super.getApi().getDocumentDrawingObjectImageDataWithoutNodePath(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectOleData() throws {
        let localName = "sample_EmbeddedOLE.docx";
        let remoteName = "TestGetDocumentDrawingObjectOleData.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectOleData") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.drawingFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectOleDataRequest(remoteName, "sections/0", objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectOleData"));
        let result = super.getApi().getDocumentDrawingObjectOleData(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

    func testGetDocumentDrawingObjectOleDataWithoutNodePath() throws {
        let localName = "sample_EmbeddedOLE.docx";
        let remoteName = "TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentDrawingObjectOleDataWithoutNodePath") + "/" + remoteName);
        let objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.drawingFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentDrawingObjectOleDataWithoutNodePathRequest(remoteName, objectIndex, getRemoteDataFolder(action: "GetDocumentDrawingObjectOleDataWithoutNodePath"));
        let result = super.getApi().getDocumentDrawingObjectOleDataWithoutNodePath(request);
        Assert.IsTrue(result.Length > 0, "Error occurred while getting drawing object");
    }
    

   
    {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsetDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "") + "/" + remoteName);
        let image = "aspose-cloud.png";
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + image))
        {               
            let request = InsertDrawingObjectRequest(remoteName, "{\"Left\": 0}", file, null, getRemoteDataFolder(action: ""));
            super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
            let actual = super.getApi().insertDrawingObject(request);
        }
    }
    

    func testInsetDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsetDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsetDrawingObjectWithoutNodePath") + "/" + remoteName);
        let image = "aspose-cloud.png";
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + image))
        {
            let request = InsertDrawingObjectWithoutNodePathRequest(remoteName, "{\"Left\": 0}", file, getRemoteDataFolder(action: "InsetDrawingObjectWithoutNodePath"));
            super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
            let actual = super.getApi().insertDrawingObjectWithoutNodePath(request);
        }
    }
    

    func testDeleteDrawingObject() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDrawingObject") + "/" + remoteName);
        int objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteDrawingObjectRequest(remoteName, null, objectIndex, getRemoteDataFolder(action: "DeleteDrawingObject"));
        super.getApi().deleteDrawingObject(request);
    }
    

    func testDeleteDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDrawingObjectWithoutNodePath") + "/" + remoteName);
        int objectIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteDrawingObjectWithoutNodePathRequest(remoteName, objectIndex, getRemoteDataFolder(action: "DeleteDrawingObjectWithoutNodePath"));
        super.getApi().deleteDrawingObjectWithoutNodePath(request);
    }
    

    func testUpdateDrawingObject() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDrawingObject.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDrawingObject") + "/" + remoteName);
        let image = "aspose-cloud.png";
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + image))
        {
            let request = UpdateDrawingObjectRequest(remoteName, "{\"Left\": 0}", file, null, 0, getRemoteDataFolder(action: "UpdateDrawingObject"));
            super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
            let actual = super.getApi().updateDrawingObject(request);
        }
    }
    

    func testUpdateDrawingObjectWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDrawingObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDrawingObjectWithoutNodePath") + "/" + remoteName);
        let image = "aspose-cloud.png";
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(BaseTestContext.CommonFolder) + image))
        {
            let request = UpdateDrawingObjectWithoutNodePathRequest(remoteName, "{\"Left\": 0}", file, 0, getRemoteDataFolder(action: "UpdateDrawingObjectWithoutNodePath"));
            super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
            let actual = super.getApi().updateDrawingObjectWithoutNodePath(request);
        }
    }
}
