/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="WatermarkTests.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// Example of how to work with watermarks.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class WatermarkTests: BaseTestContext {
    static var allTests = [
        ("testInsertWatermarkImage", testInsertWatermarkImage),
        ("testInsertWatermarkImageOnline", testInsertWatermarkImageOnline),
        ("testInsertWatermarkText", testInsertWatermarkText),
        ("testInsertWatermarkTextOnline", testInsertWatermarkTextOnline),
        ("testDeleteWatermark", testDeleteWatermark),
        ("testDeleteWatermarkOnline", testDeleteWatermarkOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentActions/Watermark";
    let localFile = "Common/test_multi_pages.docx";

    // Test for adding watermark image.
    func testInsertWatermarkImage() throws {
      let remoteFileName = "TestInsertWatermarkImage.docx";
      let remoteImagePath = remoteDataFolder + "/TestInsertWatermarkImage.png";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);
      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false), path: remoteImagePath);

      let request = InsertWatermarkImageRequest(name: remoteFileName, imageFile: nil, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName, image: remoteImagePath);
      let actual = try super.getApi().insertWatermarkImage(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestInsertWatermarkImage.docx");
    }

    // Test for adding watermark image online.
    func testInsertWatermarkImageOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestImageFile = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!;
      let request = InsertWatermarkImageOnlineRequest(document: requestDocument, imageFile: requestImageFile);
      _ = try super.getApi().insertWatermarkImageOnline(request: request);
    }

    // Test for adding watermark text.
    func testInsertWatermarkText() throws {
      let remoteFileName = "TestInsertWatermarkText.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestWatermarkText = WatermarkText()
        .setRotationAngle(rotationAngle: 90.0)
        .setText(text: "This is the text");
      let request = InsertWatermarkTextRequest(name: remoteFileName, watermarkText: requestWatermarkText, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().insertWatermarkText(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestInsertWatermarkText.docx");
    }

    // Test for adding watermark text online.
    func testInsertWatermarkTextOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let requestWatermarkText = WatermarkText()
        .setRotationAngle(rotationAngle: 90)
        .setText(text: "This is the text");
      let request = InsertWatermarkTextOnlineRequest(document: requestDocument, watermarkText: requestWatermarkText);
      _ = try super.getApi().insertWatermarkTextOnline(request: request);
    }

    // Test for deleting watermark.
    func testDeleteWatermark() throws {
      let remoteFileName = "TestDeleteWatermark.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteWatermarkRequest(name: remoteFileName, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().deleteWatermark(request: request);
      XCTAssertNotNil(actual.getDocument());
      XCTAssertEqual(actual.getDocument()!.getFileName(), "TestDeleteWatermark.docx");
    }

    // Test for deleting watermark online.
    func testDeleteWatermarkOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!;
      let request = DeleteWatermarkOnlineRequest(document: requestDocument);
      _ = try super.getApi().deleteWatermarkOnline(request: request);
    }
}
