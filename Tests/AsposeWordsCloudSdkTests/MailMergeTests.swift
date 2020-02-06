import XCTest
@testable import AsposeWordsCloudSdk

class MailMergeTests: BaseTestContext {
    static var allTests = [
        ("testExecuteMailMergeOnlineOnline", testExecuteMailMergeOnlineOnline),
        ("testExecuteMailMerge", testExecuteMailMerge),
        ("testExecuteTemplate", testExecuteTemplate),
        ("testExecuteTemplateOnline", testExecuteTemplateOnline),
        ("testGetDocumentFieldNames", testGetDocumentFieldNames),
        ("testGetDocumentFieldNamesOnline", testGetDocumentFieldNamesOnline),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "MailMerge/" + action;
    }

    func testExecuteMailMergeOnlineOnline() throws {
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleExecuteTemplate.docx"))
        {
            using (let data = File.OpenRead(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleExecuteTemplateData.txt"))
            {
                let request = ExecuteMailMergeOnlineRequest(file, data);
                let result = super.getApi().executeMailMergeOnline(request);
                Assert.IsTrue(result.Length > 0, "Error occurred while executing mail merge");
            }
        }
    }
    

    func testExecuteMailMerge() throws {
        let localName = "SampleMailMergeTemplate.docx";
        let remoteName = "TestExecuteMailMerge.docx";
        let fullName = (getRemoteDataFolder(action: "ExecuteMailMerge") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let data = File.ReadAllText(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleMailMergeTemplateData.txt");
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mailMergeFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = ExecuteMailMergeRequest(remoteName, data, getRemoteDataFolder(action: "ExecuteMailMerge"), destFileName: destFileName, withRegions: false);
        let actual = super.getApi().executeMailMerge(request);
    }

    func testExecuteTemplate() throws {
        let localName = "TestExecuteTemplate.doc";
        let remoteName = "TestExecuteTemplate.docx";
        let fullName = (getRemoteDataFolder(action: "ExecuteTemplate") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let data = File.ReadAllText(BaseTestContext.GetDataDir(this.mailMergeFolder) + "TestExecuteTemplateData.txt");
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.mailMergeFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = ExecuteMailMergeRequest(remoteName, data, getRemoteDataFolder(action: "ExecuteTemplate"), destFileName: destFileName);
        let actual = super.getApi().executeMailMerge(request);
    }
    

    func testExecuteTemplateOnline() throws {
        using (let file = File.OpenRead(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleMailMergeTemplate.docx"))
        {
            using (let data = File.OpenRead(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleExecuteTemplateData.txt"))
            {
                let request = ExecuteMailMergeOnlineRequest(file, data);
                let result = super.getApi().executeMailMergeOnline(request);
                Assert.IsTrue(result.Length > 0, "Error occurred while executing template");
            }
        }
    }

    func testGetDocumentFieldNames() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetDocumentFieldNames.docx";
        let fullName = (getRemoteDataFolder(action: "GetDocumentFieldNames") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetDocumentFieldNamesRequest(remoteName, getRemoteDataFolder(action: "GetDocumentFieldNames"));
        let actual = super.getApi().getDocumentFieldNames(request);
    }
    

    func testGetDocumentFieldNamesOnline() throws {
        using (let fileStream = File.OpenRead(BaseTestContext.GetDataDir(this.mailMergeFolder) + "SampleExecuteTemplate.docx"))
        {
            let request = GetDocumentFieldNamesOnlineRequest(fileStream, true);
            FieldNamesResponse actual = super.getApi().getDocumentFieldNamesOnline(request);
        }
    }
}
