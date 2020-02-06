import XCTest
@testable import AsposeWordsCloudSdk

class HeaderFooterTests: BaseTestContext {
    static var allTests = [
        ("testGetHeadersFooters", testGetHeadersFooters),
        ("testGetHeaderFooter", testGetHeaderFooter),
        ("testGetHeaderFooterOfSection", testGetHeaderFooterOfSection),
        ("testDeleteHeaderFooter", testDeleteHeaderFooter),
        ("testDeleteHeaderFooters", testDeleteHeaderFooters),
        ("testInsertHeaderFooter", testInsertHeaderFooter),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "HeaderFooter/" + action;
    }

    private let headerFooterFolder = "DocumentElements/HeaderFooters";
    
    func testGetHeadersFooters() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestGetHeadersFooters.docx";
        let fullName = (getRemoteDataFolder(action: "GetHeadersFooters") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetHeaderFootersRequest(name: remoteName, sectionPath: "", folder: getRemoteDataFolder(action: "GetHeadersFooters"));
        let actual = try super.getApi().getHeaderFooters(request: request);
    }
    

    func testGetHeaderFooter() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestGetHeaderFooter.docx";
        let fullName = (getRemoteDataFolder(action: "GetHeaderFooter") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetHeaderFooterRequest(name: remoteName, headerFooterIndex: index, folder: getRemoteDataFolder(action: "GetHeaderFooter"));
        let actual = try super.getApi().getHeaderFooter(request: request);
    }
    

    func testGetHeaderFooterOfSection() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestGetHeaderFooterOfSection.docx";
        let fullName = (getRemoteDataFolder(action: "GetHeaderFooterOfSection") + "/" + remoteName);
        let index = 0;
        let sectionIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetHeaderFooterOfSectionRequest(name: remoteName, headerFooterIndex: index, sectionIndex: sectionIndex, folder: getRemoteDataFolder(action: "GetHeaderFooterOfSection"));
        let actual = try super.getApi().getHeaderFooterOfSection(request: request);
    }
    

    func testDeleteHeaderFooter() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestDeleteHeaderFooter.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteHeaderFooter") + "/" + remoteName);
        let index = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteHeaderFooterRequest(name: remoteName, sectionPath: "", index: index, folder: getRemoteDataFolder(action: "DeleteHeaderFooter"));
        try super.getApi().deleteHeaderFooter(request: request);
    }
    

    func testDeleteHeaderFooters() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestDeleteHeaderFooters.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteHeaderFooters") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteHeadersFootersRequest(name: remoteName, sectionPath: "", folder: getRemoteDataFolder(action: "DeleteHeaderFooters"));
        try super.getApi().deleteHeadersFooters(request: request);
    }
    

    func testInsertHeaderFooter() throws {
        let localName = "HeadersFooters.doc";
        let remoteName = "TestInsertHeaderFooter.docx";
        let fullName = (getRemoteDataFolder(action: "InsertHeaderFooter") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(headerFooterFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertHeaderFooterRequest(name: remoteName, headerFooterType: "FooterEven", sectionPath: "",  folder: getRemoteDataFolder(action: "InsertHeaderFooter"));
        let actual = try super.getApi().insertHeaderFooter(request: request);
    }
}
