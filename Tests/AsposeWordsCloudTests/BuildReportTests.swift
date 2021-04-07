/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BuildReportTests.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import XCTest
@testable import AsposeWordsCloud

// Example of how to perform mail merge.
class BuildReportTests: BaseTestContext {
    static var allTests = [
        ("testBuildReportOnline", testBuildReportOnline),
        ("testBuildReport", testBuildReport)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Reporting";
    let reportingFolder = "DocumentActions/Reporting";

    // Test for build report online.
    func testBuildReportOnline() throws {
      let localDocumentFile = "ReportTemplate.docx";
      let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/ReportData.json", isDirectory: false));

      let requestReportEngineSettings = ReportEngineSettings();
      requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
      requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");


      let request = BuildReportOnlineRequest(template: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/" + localDocumentFile, isDirectory: false))!, data: localDataFile, reportEngineSettings: requestReportEngineSettings);
      _ = try super.getApi().buildReportOnline(request: request);
    }

    // Test for build report.
    func testBuildReport() throws {
      let localDocumentFile = "ReportTemplate.docx";
      let remoteFileName = "TestBuildReport.docx";
      let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/ReportData.json", isDirectory: false));

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/" + localDocumentFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestReportEngineSettingsReportBuildOptions = [ReportBuildOptions.allowMissingMembers, ReportBuildOptions.removeEmptyParagraphs];

      let requestReportEngineSettings = ReportEngineSettings();
      requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
      requestReportEngineSettings.setReportBuildOptions(reportBuildOptions: requestReportEngineSettingsReportBuildOptions);


      let request = BuildReportRequest(name: remoteFileName, data: localDataFile, reportEngineSettings: requestReportEngineSettings, folder: remoteDataFolder);
      let actual = try super.getApi().buildReport(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestBuildReport.docx");
    }
}
