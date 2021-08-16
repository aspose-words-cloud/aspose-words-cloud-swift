/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageSetupTests.swift">
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

// Example of how to work with macros.
class PageSetupTests: BaseTestContext {
    static var allTests = [
        ("testGetSectionPageSetup", testGetSectionPageSetup),
        ("testGetSectionPageSetupOnline", testGetSectionPageSetupOnline),
        ("testUpdateSectionPageSetup", testUpdateSectionPageSetup),
        ("testUpdateSectionPageSetupOnline", testUpdateSectionPageSetupOnline),
        ("testGetRenderPage", testGetRenderPage),
        ("testGetRenderPageOnline", testGetRenderPageOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/PageSetup";
    let localFile = "Common/test_multi_pages.docx";
    let localTextFile = "DocumentElements/Text/SampleWordDocument.docx";

    // Test for getting page settings.
    func testGetSectionPageSetup() throws {
      let remoteFileName = "TestGetSectionPageSetup.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetSectionPageSetupRequest(name: remoteFileName, sectionIndex: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getSectionPageSetup(request: request);
      XCTAssertNotNil(actual.getPageSetup());
      XCTAssertEqual(actual.getPageSetup()!.getLineStartingNumber(), 1);
    }

    // Test for getting page settings online.
    func testGetSectionPageSetupOnline() throws {



      let request = GetSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0);
      _ = try super.getApi().getSectionPageSetupOnline(request: request);
    }

    // Test for updating page settings.
    func testUpdateSectionPageSetup() throws {
      let remoteFileName = "TestUpdateSectionPageSetup.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestPageSetup = PageSetup();
      requestPageSetup.setRtlGutter(rtlGutter: true);
      requestPageSetup.setLeftMargin(leftMargin: 10.0);
      requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
      requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);


      let request = UpdateSectionPageSetupRequest(name: remoteFileName, sectionIndex: 0, pageSetup: requestPageSetup, folder: remoteDataFolder);
      let actual = try super.getApi().updateSectionPageSetup(request: request);
      XCTAssertNotNil(actual.getPageSetup());
      XCTAssertEqual(actual.getPageSetup()!.getRtlGutter(), true);


    }

    // Test for updating page settings online.
    func testUpdateSectionPageSetupOnline() throws {


      let requestPageSetup = PageSetup();
      requestPageSetup.setRtlGutter(rtlGutter: true);
      requestPageSetup.setLeftMargin(leftMargin: 10);
      requestPageSetup.setOrientation(orientation: PageSetup.Orientation.landscape);
      requestPageSetup.setPaperSize(paperSize: PageSetup.PaperSize.a5);


      let request = UpdateSectionPageSetupOnlineRequest(document: requestDocument, sectionIndex: 0, pageSetup: requestPageSetup);
      _ = try super.getApi().updateSectionPageSetupOnline(request: request);
    }

    // Test for page rendering.
    func testGetRenderPage() throws {
      let remoteFileName = "TestGetRenderPage.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localTextFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderPageRequest(name: remoteFileName, pageIndex: 1, format: "bmp", folder: remoteDataFolder);
      _ = try super.getApi().renderPage(request: request);
    }

    // Test for page rendering.
    func testGetRenderPageOnline() throws {



      let request = RenderPageOnlineRequest(document: requestDocument, pageIndex: 1, format: "bmp");
      _ = try super.getApi().renderPageOnline(request: request);
    }
}
