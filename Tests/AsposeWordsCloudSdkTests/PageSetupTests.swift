import XCTest
@testable import AsposeWordsCloudSdk

class PageSetupTests: BaseTestContext {
    static var allTests = [
        ("testGetSectionPageSetup", testGetSectionPageSetup),
        ("testUpdateSectionPageSetup", testUpdateSectionPageSetup),
        ("testGetRenderPage", testGetRenderPage),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "PageSetup/" + action;
    }

    func testGetSectionPageSetup() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestGetSectionPageSetup.docx";
        let fullName = (getRemoteDataFolder(action: "GetSectionPageSetup") + "/" + remoteName);
        let sectionIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetSectionPageSetupRequest(name: remoteName, sectionIndex: sectionIndex, folder: getRemoteDataFolder(action: "GetSectionPageSetup"));
        let actual = try super.getApi().getSectionPageSetup(request: request);
    }
    

    func testUpdateSectionPageSetup() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateSectionPageSetup.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateSectionPageSetup") + "/" + remoteName);
        let sectionIndex = 0;
        
        let body = PageSetup();
        body.setRtlGutter(rtlGutter: true);
        body.setLeftMargin(leftMargin: 10);
        body.setOrientation(orientation: PageSetup.Orientation.landscape);
        body.setPaperSize(paperSize: PageSetup.PaperSize.a5);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateSectionPageSetupRequest(name: remoteName, sectionIndex: sectionIndex, pageSetup: body, folder: getRemoteDataFolder(action: "UpdateSectionPageSetup"));
        let actual = try super.getApi().updateSectionPageSetup(request: request);
    }
    

    func testGetRenderPage() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestGetRenderPage.docx";
        let fullName = (getRemoteDataFolder(action: "GetRenderPage") + "/" + remoteName);
        let pageNumber = 1;
        let format = "bmp";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("DocumentElements/Text", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderPageRequest(name: remoteName, pageIndex: pageNumber, format: format, folder: getRemoteDataFolder(action: "GetRenderPage"));
        let result = try super.getApi().renderPage(request: request);
        XCTAssert(result.count > 0, "Error while page render");
    }
}
