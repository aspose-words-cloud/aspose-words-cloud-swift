import XCTest
@testable import AsposeWordsCloudSdk

class MathObjectTests: BaseTestContext {
    static var allTests = [
        ("testGetOfficeMathObjects", testGetOfficeMathObjects),
        ("testGetOfficeMathObjectsWithoutNodePath", testGetOfficeMathObjectsWithoutNodePath),
        ("testGetOfficeMathObject", testGetOfficeMathObject),
        ("testGetOfficeMathObjectWithoutNodePath", testGetOfficeMathObjectWithoutNodePath),
        ("testRenderMathObject", testRenderMathObject),
        ("testRenderMathObjectWithoutNodePath", testRenderMathObjectWithoutNodePath),
        ("testDeleteMathObject", testDeleteMathObject),
        ("testDeleteMathObjectWithoutNodePath", testDeleteMathObjectWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "MathObject/" + action;
    }
    
    private let mathObjectFolder = "DocumentElements/MathObjects";
    
    func testGetOfficeMathObjects() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjects.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjects") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetOfficeMathObjectsRequest(name: remoteName, nodePath: "", folder: getRemoteDataFolder(action: "GetOfficeMathObjects"));
        let actual = try super.getApi().getOfficeMathObjects(request: request);
    }
    

    func testGetOfficeMathObjectsWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjectsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjectsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetOfficeMathObjectsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetOfficeMathObjectsWithoutNodePath"));
        let actual = try super.getApi().getOfficeMathObjectsWithoutNodePath(request: request);
    }
    

    func testGetOfficeMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetOfficeMathObjectRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "GetOfficeMathObject"));
        let actual = try super.getApi().getOfficeMathObject(request: request);
    }
    

    func testGetOfficeMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestGetOfficeMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetOfficeMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetOfficeMathObjectWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "GetOfficeMathObjectWithoutNodePath"));
        let actual = try super.getApi().getOfficeMathObjectWithoutNodePath(request: request);
    }
    

    func testRenderMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestRenderMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "RenderMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderMathObjectRequest(name: remoteName, format: "png", nodePath: "", index: index, folder: getRemoteDataFolder(action: "RenderMathObject"));
        let actual = try super.getApi().renderMathObject(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while mathObject rendering");
    }
    

    func testRenderMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestRenderMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderMathObjectWithoutNodePathRequest(name: remoteName, format: "png", index: index, folder: getRemoteDataFolder(action: "RenderMathObjectWithoutNodePath"));
        let actual = try super.getApi().renderMathObjectWithoutNodePath(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while mathObject rendering");
    }
    

    func testDeleteMathObject() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestDeleteMathObject.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteMathObject") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteOfficeMathObjectRequest(name: remoteName, nodePath: "", index: index, folder: getRemoteDataFolder(action: "DeleteMathObject"));
        try super.getApi().deleteOfficeMathObject(request: request);
    }
    

    func testDeleteMathObjectWithoutNodePath() throws {
        let localName = "MathObjects.docx";
        let remoteName = "TestDeleteMathObjectWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteMathObjectWithoutNodePath") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(mathObjectFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteOfficeMathObjectWithoutNodePathRequest(name: remoteName, index: index, folder: getRemoteDataFolder(action: "DeleteMathObjectWithoutNodePath"));
        try super.getApi().deleteOfficeMathObjectWithoutNodePath(request: request);
    }
}
