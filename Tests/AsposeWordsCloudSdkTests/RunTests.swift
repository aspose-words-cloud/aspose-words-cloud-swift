import XCTest
@testable import AsposeWordsCloudSdk

class RunTests: BaseTestContext {
    static var allTests = [
        ("testUpdateRun", testUpdateRun),
        ("testInsertRun", testInsertRun),
        ("testDeleteRun", testDeleteRun),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Run/" + action;
    }

    private let runFolder = "DocumentElements/Runs";
    
    func testUpdateRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestUpdateRun.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateRun") + "/" + remoteName);
        
        let run = Run();
        run.setText(text: "run with text");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateRunRequest(name: remoteName, run: run, paragraphPath: "paragraphs/1", index: 0, folder: getRemoteDataFolder(action: "UpdateRun"));
        let actual = try super.getApi().updateRun(request: request);
        XCTAssert(actual.getRun() != nil);
    }
    

    func testInsertRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestInsertRun.docx";
        let fullName = (getRemoteDataFolder(action: "InsertRun") + "/" + remoteName);
        
        let run = Run();
        run.setText(text: "run with text");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertRunRequest(name: remoteName, paragraphPath: "paragraphs/1", run: run, folder: getRemoteDataFolder(action: "InsertRun"));
        let actual = try super.getApi().insertRun(request: request);
        XCTAssert(actual.getRun() != nil);
    }
    

    func testDeleteRun() throws {
        let localName = "Run.doc";
        let remoteName = "TestDeleteRun.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteRun") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(runFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteRunRequest(name: remoteName, paragraphPath: "paragraphs/1", index: index, folder: getRemoteDataFolder(action: "DeleteRun"));
        try super.getApi().deleteRun(request: request);
    }
}
