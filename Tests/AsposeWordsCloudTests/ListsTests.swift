import XCTest
@testable import AsposeWordsCloud

class ListsTests: BaseTestContext {
    static var allTests = [
        ("testGetLists", testGetLists),
        ("testGetList", testGetList),
        ("testUpdateList", testUpdateList),
        ("testUpdateListLevel", testUpdateListLevel),
        ("testInsertList", testInsertList),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Lists/" + action;
    }

    private let localDataFolder = "Lists";
    private let localName = "ListsGet.doc";
    
    func testGetLists() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestGetLists") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetListsRequest(name: remoteName);
        _ = try super.getApi().getLists(request: request);
    }
    
    func testGetList() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestGetList") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetListRequest(name: remoteName, listId: 1);
        _ = try super.getApi().getList(request: request);
    }
    
    func testUpdateList() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestUpdateList") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = ListUpdate();
        data.setIsRestartAtEachSection(isRestartAtEachSection: true);
        
        let request = UpdateListRequest(name: remoteName, listUpdate: data, listId: 1);
        _ = try super.getApi().updateList(request: request);
    }
    
    func testUpdateListLevel() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestUpdateListLevel") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = ListLevelUpdate();
        data.setAlignment(alignment: ListLevelUpdate.Alignment._right);
        
        let request = UpdateListLevelRequest(name: remoteName, listUpdate: data, listId: 1, listLevel: 1);
        _ = try super.getApi().updateListLevel(request: request);
    }
    
    func testInsertList() throws {
        let remoteName = localName;
        let fullName = (getRemoteDataFolder(action: "TestInsertList") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        
        let data = ListInsert();
        data.setTemplate(template: ListInsert.Template.outlineLegal);
        
        let request = InsertListRequest(name: remoteName, listInsert: data);
        _ = try super.getApi().insertList(request: request);
    }
}
