import XCTest
@testable import AsposeWordsCloudSdk

class SectionsTests: BaseTestContext {
    static var allTests = [
        ("testDeleteHeadersFooters", testDeleteHeadersFooters),
        ("testGetSection", testGetSection),
        ("testGetSections", testGetSections),
        ("testDeleteSections", testDeleteSections),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Sections/" + action;
    }

    func testDeleteHeadersFooters() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteHeadersFooters.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteHeadersFooters") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteHeadersFootersRequest(remoteName, "sections/0", getRemoteDataFolder(action: "DeleteHeadersFooters"), destFileName: destFileName);
        super.getApi().deleteHeadersFooters(request);
    }

    func testGetSection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetSection.docx";
        let fullName = (getRemoteDataFolder(action: "GetSection") + "/" + remoteName);
        let sectionIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetSectionRequest(remoteName, sectionIndex, getRemoteDataFolder(action: "GetSection"));
        let actual = super.getApi().getSection(request);
    }
    

    func testGetSections() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetSections.docx";
        let fullName = (getRemoteDataFolder(action: "GetSections") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetSectionsRequest(remoteName, getRemoteDataFolder(action: "GetSections"));
        let actual = super.getApi().getSections(request);
    }
    

    func testDeleteSections() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSections.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSections") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteSectionRequest(remoteName, 0, getRemoteDataFolder(action: "DeleteSections"));
        super.getApi().deleteSection(request);
    }
}
