/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="LoadWebDocumentTests.swift">
 *   Copyright (c) 2024 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class LoadWebDocumentTests: BaseTestContext {
    static var allTests = [
        ("testLoadWebDocument", testLoadWebDocument)
    ];

    // Test for loading web document.
    func testLoadWebDocument() throws {
      let requestDataSaveOptions = DocSaveOptionsData()
        .setDmlEffectsRenderingMode(dmlEffectsRenderingMode: DocSaveOptionsData.DmlEffectsRenderingMode._none)
        .setDmlRenderingMode(dmlRenderingMode: DocSaveOptionsData.DmlRenderingMode.drawingML)
        .setFileName(fileName: "google.doc")
        .setZipOutput(zipOutput: false);
      let requestData = LoadWebDocumentData()
        .setSaveOptions(saveOptions: requestDataSaveOptions as! DocSaveOptionsData)
        .setLoadingDocumentUrl(loadingDocumentUrl: "http://google.com");
      let request = LoadWebDocumentRequest(data: requestData);
      let actual = try super.getApi().loadWebDocument(request: request);
      XCTAssertNotNil(actual.getSaveResult());
      XCTAssertNotNil(actual.getSaveResult()!.getDestDocument());
      XCTAssertEqual(actual.getSaveResult()!.getDestDocument()!.getHref(), "google.doc");
    }
}
