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
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetSectionPageSetupRequest(remoteName, sectionIndex, getRemoteDataFolder(action: "GetSectionPageSetup"));
        let actual = super.getApi().getSectionPageSetup(request);
    }
    

    func testUpdateSectionPageSetup() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateSectionPageSetup.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateSectionPageSetup") + "/" + remoteName);
        let sectionIndex = 0;
        let body = PageSetup
                       {
                           RtlGutter = true,
                           LeftMargin = 10.0f,
                           Orientation = PageSetup.OrientationEnum.Landscape,
                           PaperSize = PageSetup.PaperSizeEnum.A5
                       };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateSectionPageSetupRequest(remoteName, sectionIndex, body, getRemoteDataFolder(action: "UpdateSectionPageSetup"));
        let actual = super.getApi().updateSectionPageSetup(request);
    }
    

    func testGetRenderPage() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestGetRenderPage.docx";
        let fullName = (getRemoteDataFolder(action: "GetRenderPage") + "/" + remoteName);
        let pageNumber = 1;
        let format = "bmp";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.textFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderPageRequest(remoteName, pageNumber, format, getRemoteDataFolder(action: "GetRenderPage"));
        let result = super.getApi().renderPage(request);
        Assert.IsTrue(result.Length > 0, "Error while page render");
    }
}
