import XCTest
@testable import AsposeWordsCloud

class BuildReportTests: BaseTestContext {
    static var allTests = [
        ("testBuildReportOnline", testBuildReportOnline),
        ("testBuildReport", testBuildReport)
    ];

    func getReportFolder() -> String {
        return "DocumentActions/Reporting/";
    }
    
    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + getReportFolder() + action;
    }

    func testBuildReportOnline() throws {
        let filePath = self.getLocalTestDataFolder()
            .appendingPathComponent(getReportFolder(), isDirectory: true)
            .appendingPathComponent("ReportTemplate.docx", isDirectory: false);
            
        let dataPath = self.getLocalTestDataFolder()
            .appendingPathComponent(getReportFolder(), isDirectory: true)
            .appendingPathComponent("ReportData.json", isDirectory: false);
    
        let settings = ReportEngineSettings();
        settings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        settings.setDataSourceName(dataSourceName: "persons");
        
        let request = BuildReportOnlineRequest(template: InputStream(url: filePath)!, data: try String(contentsOf: dataPath), reportEngineSettings: settings);
        let result = try super.getApi().buildReportOnline(request: request);

        XCTAssert(result.count > 0, "Error occurred while executing build report online");
    }

    func testBuildReport() throws {
        let localName = "ReportTemplate.docx";
        let remoteName = "TestBuildReport.docx";
        let dataPath = self.getLocalTestDataFolder()
            .appendingPathComponent(getReportFolder(), isDirectory: true)
            .appendingPathComponent("ReportData.json", isDirectory: false);

        let localPath = self.getLocalTestDataFolder()
            .appendingPathComponent(getReportFolder(), isDirectory: true)
            .appendingPathComponent(localName, isDirectory: false);
            
        let fullName = getRemoteDataFolder(action: "testBuildReport") + "/" + remoteName;
        
        try super.uploadFile(fileContent: localPath, path: fullName);

        let settings = ReportEngineSettings();
        settings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        settings.setReportBuildOptions(reportBuildOptions: [ReportBuildOptions.allowMissingMembers, ReportBuildOptions.removeEmptyParagraphs]);

        let request = BuildReportRequest(name: remoteName, data: try String(contentsOf: dataPath), reportEngineSettings: settings);
        _ = try super.getApi().buildReport(request: request);
    }
}