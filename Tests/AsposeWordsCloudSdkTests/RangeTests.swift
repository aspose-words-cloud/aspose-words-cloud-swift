import XCTest
@testable import AsposeWordsCloudSdk

class RangeTests: BaseTestContext {
    static var allTests = [
        ("func GetRangeText", func GetRangeText),
        ("func RemoveRange", func RemoveRange),
        ("func SaveAsRange", func SaveAsRange),
        ("func ReplaceWithText", func ReplaceWithText),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Range/" + action;
    }

    func GetRangeText() throws {
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let expectedText = "This is HEADER ";
        let localName = "RangeGet.doc";
        let remoteName = "TestGetRangeText.doc";
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetRangeTextRequest(remoteName, rangeStart, rangeEnd, this.remoteDataFolder);
        let rangeTextResponse = super.getApi().getRangeText(request);
        Assert.AreEqual(expectedText, rangeTextResponse.Text);
    }
    

    func RemoveRange() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestRemoveRange.doc";
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let request = RemoveRangeRequest(remoteName, rangeStart, rangeEnd, this.remoteDataFolder);
        super.getApi().removeRange(request);
    }
    

    func SaveAsRange() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestSaveAsRange.doc";
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let newDocName = (this.remoteDataFolder + "/" + "NewDoc.docx");
        let rangeDoc = RangeDocument { DocumentName = newDocName };
        let request = SaveAsRangeRequest(remoteName, rangeStart, rangeDoc, rangeEnd, this.remoteDataFolder);
        super.getApi().saveAsRange(request);
        let result = super.getApi().downloadFile(DownloadFileRequest(newDocName));
        Assert.IsNotNull(result, "Cannot download document from storage");
    }
    

    func ReplaceWithText() throws {
        let localName = "RangeGet.doc";
        let remoteName = "TestSaveAsRange.doc";
        let fullName = (this.remoteDataFolder + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.localDataFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let rangeStart = "id0.0.0";
        let rangeEnd = "id0.0.1";
        let newText = "Replaced header";
        let replacement = ReplaceRange { Text = newText };
        let request = ReplaceWithTextRequest(remoteName, rangeStart, replacement, rangeEnd, this.remoteDataFolder);
        super.getApi().replaceWithText(request);
    }
}
