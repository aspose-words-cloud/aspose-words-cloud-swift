import XCTest
@testable import AsposeWordsCloud

class StylesTests: BaseTestContext {
    static var allTests = [
        ("testGetStyles", testGetStyles),
        ("testGetStyle", testGetStyle),
        ("testUpdateStyle", testUpdateStyle),
        ("testInsertStyle", testInsertStyle),
        ("testCopyStyle", testCopyStyle),
        ("testGetStyleFromDocumentElement", testGetStyleFromDocumentElement),
        ("testApplyStyleToDocumentElement", testApplyStyleToDocumentElement),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "DocumentElements/Styles/" + action;
    }

    private let localDataFolder = "DocumentElements/Styles";
    private let localName = "GetStyles.docx";
    
    func testGetStyles() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestGetStyles") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetStylesRequest(name: remoteName, folder: getRemoteDataFolder(action: "TestGetStyles"));
        _ = try super.getApi().getStyles(request: request);
    }
    
    func testGetStyle() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestGetStyle") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetStyleRequest(name: remoteName, styleName: "Heading 1", folder: getRemoteDataFolder(action: "TestGetStyle"));
        _ = try super.getApi().getStyle(request: request);
    }
    
    func testUpdateStyle() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestUpdateStyle") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = StyleUpdate();
        data.setName(name: "My Style");
        
        let request = UpdateStyleRequest(name: remoteName, styleUpdate: data, styleName: "Heading 1", folder: getRemoteDataFolder(action: "TestUpdateStyle"));
        _ = try super.getApi().updateStyle(request: request);
    }
    
    func testInsertStyle() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestInsertStyle") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = StyleInsert();
        data.setStyleName(styleName: "My Style");
        data.setStyleType(styleType: StyleInsert.StyleType.paragraph);
        
        let request = InsertStyleRequest(name: remoteName, styleInsert: data, folder: getRemoteDataFolder(action: "TestInsertStyle"));
        _ = try super.getApi().insertStyle(request: request);
    }
    
    func testCopyStyle() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestCopyStyle") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = StyleCopy();
        data.setStyleName(styleName: "Heading 1");
        
        let request = CopyStyleRequest(name: remoteName, styleCopy: data, folder: getRemoteDataFolder(action: "TestCopyStyle"));
        _ = try super.getApi().copyStyle(request: request);
    }
    
    func testGetStyleFromDocumentElement() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestGetStyleFromDocumentElement") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetStyleFromDocumentElementRequest(name: remoteName, styledNodePath: "paragraphs/1/paragraphFormat", folder: getRemoteDataFolder(action: "TestGetStyleFromDocumentElement"));
        _ = try super.getApi().getStyleFromDocumentElement(request: request);
    }
    
    func testApplyStyleToDocumentElement() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestApplyStyleToDocumentElement") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = StyleApply();
        data.setStyleName(styleName: "Heading 1");
        
        let request = ApplyStyleToDocumentElementRequest(name: remoteName, styleApply: data, styledNodePath: "paragraphs/1/paragraphFormat", folder: getRemoteDataFolder(action: "TestApplyStyleToDocumentElement"));
        _ = try super.getApi().applyStyleToDocumentElement(request: request);
    }
}
