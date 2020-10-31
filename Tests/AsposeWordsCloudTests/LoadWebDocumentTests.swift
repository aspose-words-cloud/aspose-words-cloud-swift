/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentTests.swift">
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

// Example of how to load web document.
class LoadWebDocumentTests: BaseTestContext {
    static var allTests = [
        ("testLoadWebDocument", testLoadWebDocument)
    ];

    // Test for loading web document.
    func testLoadWebDocument() throws {
      let requestDataSaveOptions = SaveOptionsData();
      requestDataSaveOptions.setFileName(fileName: "google.doc");
      requestDataSaveOptions.setSaveFormat(saveFormat: "doc");
      requestDataSaveOptions.setDmlEffectsRenderingMode(dmlEffectsRenderingMode: "1");
      requestDataSaveOptions.setDmlRenderingMode(dmlRenderingMode: "1");
      requestDataSaveOptions.setUpdateSdtContent(updateSdtContent: false);
      requestDataSaveOptions.setZipOutput(zipOutput: false);

      let requestData = LoadWebDocumentData();
      requestData.setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
      requestData.setSaveOptions(saveOptions: requestDataSaveOptions);


      let request = LoadWebDocumentRequest(data: requestData);
      let actual = try super.getApi().loadWebDocument(request: request);
      assert(actual.getSaveResult() != nil);
      assert(actual.getSaveResult()!.getDestDocument() != nil);
      assert( actual.getSaveResult()!.getDestDocument()!.getHref()!.hasPrefix("google.doc") == true);
    }
}
