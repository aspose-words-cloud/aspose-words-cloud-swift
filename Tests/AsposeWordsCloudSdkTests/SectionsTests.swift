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
        let destFileName = (super.getRemoteTestOut + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteHeadersFootersRequest(remoteName, "sections/0", getRemoteDataFolder(action: "DeleteHeadersFooters"), destFileName: destFileName);
        try super.getApi().deleteHeadersFooters(request: request);
    }

    func testGetSection() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetSection.docx";
        let fullName = (getRemoteDataFolder(action: "GetSection") + "/" + remoteName);
        let sectionIndex = 0;
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetSectionRequest(remoteName, sectionIndex, getRemoteDataFolder(action: "GetSection"));
        let actual = try super.getApi().getSection(request: request);
    }
    

    func testGetSections() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetSections.docx";
        let fullName = (getRemoteDataFolder(action: "GetSections") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetSectionsRequest(remoteName, getRemoteDataFolder(action: "GetSections"));
        let actual = try super.getApi().getSections(request: request);
    }
    

    func testDeleteSections() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSections.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSections") + "/" + remoteName);
        try super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteSectionRequest(remoteName, 0, getRemoteDataFolder(action: "DeleteSections"));
        try super.getApi().deleteSection(request: request);
    }
}
