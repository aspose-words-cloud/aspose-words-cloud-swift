/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="BatchTests.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
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

// Example of how to use batch requests.
class BatchTests: BaseTestContext {
    static var allTests = [
        ("testBatch", testBatch)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Paragraphs";
    let localFile = "Common/test_multi_pages.docx";
    let reportingFolder = "DocumentActions/Reporting";

    // Test for simple batch request.
    func testBatch() throws {
        let remoteFileName = "TestGetDocumentParagraphByIndex.docx";

        try super.uploadFile(
            fileContent: InputStream(url: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, 
            path: remoteDataFolder + "/" + remoteFileName
        );

        let request1 = GetParagraphsRequest(
            name: remoteFileName,
            nodePath: "sections/0",
            folder: remoteDataFolder
        );

        let request2 = GetParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "sections/0",
            folder: remoteDataFolder
        );

        let request3Body = ParagraphInsert();
        request3Body.setText(text: "This is a new paragraph for your document");

        let request3 = InsertParagraphRequest(
            name: remoteFileName,
            paragraph: request3Body,
            nodePath: "sections/0",
            folder: remoteDataFolder
        );

        let request4 = DeleteParagraphRequest(
            name: remoteFileName,
            index: 0,
            nodePath: "",
            folder: remoteDataFolder
        );

        let localDocumentFile = "ReportTemplate.docx";
        let localDataFile = try String(contentsOf: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/ReportData.json", isDirectory: false));

        let requestReportEngineSettings = ReportEngineSettings();
        requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
        requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");

        let request5 = BuildReportOnlineRequest(template: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(reportingFolder + "/" + localDocumentFile, isDirectory: false))!, data: localDataFile, reportEngineSettings: requestReportEngineSettings);

        let result = try super.getApi().batch(requests: [request1, request2, request3, request4, request5]);
        assert(result.count == 5);
        assert(result[0] is ParagraphLinkCollectionResponse);
        assert(result[1] is ParagraphResponse);
        assert(result[2] is ParagraphResponse);
        assert(result[3] == nil);
        assert(result[4] is Data);
    }
}
