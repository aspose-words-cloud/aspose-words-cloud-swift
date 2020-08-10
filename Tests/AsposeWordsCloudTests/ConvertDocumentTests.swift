/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ConvertDocumentTests.swift">
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

// Example of how to convert document to one of the available formats.
class ConvertDocumentTests: BaseTestContext {
    static var allTests = [
        ("testSaveAs", testSaveAs),
        ("testSaveAsOnline", testSaveAsOnline),
        ("testSaveAsDocx", testSaveAsDocx),
        ("testSaveAsTiff", testSaveAsTiff),
        ("testConvertDocument", testConvertDocument)
    ];

    let remoteFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/ConvertDocument";
    let localFolder = "DocumentActions/ConvertDocument";

    // Test for converting document to one of the available formats.
    func testSaveAs() throws {
      let localName = "test_multi_pages.docx";
      let remoteName = "TestSaveAs.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptionsData = SaveOptionsData();
      requestSaveOptionsData.setSaveFormat(saveFormat: "pdf");
      requestSaveOptionsData.setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAs.pdf");


      let request = SaveAsRequest(name: remoteName, saveOptionsData: requestSaveOptionsData, folder: remoteFolder);
      _ = try super.getApi().saveAs(request: request);
    }

    // Test for converting document online to one of the available formats.
    func testSaveAsOnline() throws {
      let localName = "test_multi_pages.docx";

      let requestSaveOptionsData = SaveOptionsData();
      requestSaveOptionsData.setSaveFormat(saveFormat: "pdf");
      requestSaveOptionsData.setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAs.pdf");


      let request = SaveAsOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false))!, saveOptionsData: requestSaveOptionsData);
      _ = try super.getApi().saveAsOnline(request: request);
    }

    // Test for converting document to one of the available formats.
    func testSaveAsDocx() throws {
      let localName = "45.pdf";
      let remoteName = "TestSaveAsFromPdfToDoc.pdf";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFolder + "/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptionsData = SaveOptionsData();
      requestSaveOptionsData.setSaveFormat(saveFormat: "docx");
      requestSaveOptionsData.setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/TestSaveAsFromPdfToDoc.docx");


      let request = SaveAsRequest(name: remoteName, saveOptionsData: requestSaveOptionsData, folder: remoteFolder);
      _ = try super.getApi().saveAs(request: request);
    }

    // Test for converting document to one of the available formats.
    func testSaveAsTiff() throws {
      let localName = "test_multi_pages.docx";
      let remoteName = "TestSaveAsTiff.pdf";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localName, isDirectory: false), path: remoteFolder + "/" + remoteName);

      let requestSaveOptions = TiffSaveOptionsData();
      requestSaveOptions.setSaveFormat(saveFormat: "tiff");
      requestSaveOptions.setFileName(fileName: BaseTestContext.getRemoteTestOut() + "/abc.tiff");


      let request = SaveAsTiffRequest(name: remoteName, saveOptions: requestSaveOptions, folder: remoteFolder);
      _ = try super.getApi().saveAsTiff(request: request);
    }

    // A test for ConvertDocument.
    func testConvertDocument() throws {
      let request = ConvertDocumentRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFolder + "/test_uploadfile.docx", isDirectory: false))!, format: "pdf");
      _ = try super.getApi().convertDocument(request: request);
    }
}
