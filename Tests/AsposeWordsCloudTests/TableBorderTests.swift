/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableBorderTests.swift">
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

// Example of how to work with table borders.
class TableBorderTests: BaseTestContext {
    static var allTests = [
        ("testGetBorders", testGetBorders),
        ("testGetBordersOnline", testGetBordersOnline),
        ("testGetBorder", testGetBorder),
        ("testGetBorderOnline", testGetBorderOnline),
        ("testDeleteBorders", testDeleteBorders),
        ("testDeleteBordersOnline", testDeleteBordersOnline),
        ("testDeleteBorder", testDeleteBorder),
        ("testDeleteBorderOnline", testDeleteBorderOnline),
        ("testUpdateBorder", testUpdateBorder),
        ("testUpdateBorderOnline", testUpdateBorderOnline)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Tables";
    let localFile = "DocumentElements/Tables/TablesGet.docx";

    // Test for getting borders.
    func testGetBorders() throws {
      let remoteFileName = "TestGetBorders.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBordersRequest(name: remoteFileName, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().getBorders(request: request);
      XCTAssertNotNil(actual.getBorders());
      XCTAssertNotNil(actual.getBorders()!.getList());
      XCTAssertEqual(actual.getBorders()!.getList()!.count, 6);
      XCTAssertNotNil(actual.getBorders()!.getList()![0].getColor());
      XCTAssertEqual(actual.getBorders()!.getList()![0].getColor()!.getWeb(), "#000000");
    }

    // Test for getting borders online.
    func testGetBordersOnline() throws {
      let request = GetBordersOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().getBordersOnline(request: request);
    }

    // Test for getting border.
    func testGetBorder() throws {
      let remoteFileName = "TestGetBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetBorderRequest(name: remoteFileName, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().getBorder(request: request);
      XCTAssertNotNil(actual.getBorder());
      XCTAssertNotNil(actual.getBorder()!.getColor());
      XCTAssertEqual(actual.getBorder()!.getColor()!.getWeb(), "#000000");
    }

    // Test for getting border online.
    func testGetBorderOnline() throws {
      let request = GetBorderOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().getBorderOnline(request: request);
    }

    // Test for deleting borders.
    func testDeleteBorders() throws {
      let remoteFileName = "TestDeleteBorders.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBordersRequest(name: remoteFileName, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      _ = try super.getApi().deleteBorders(request: request);
    }

    // Test for deleting borders online.
    func testDeleteBordersOnline() throws {
      let request = DeleteBordersOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().deleteBordersOnline(request: request);
    }

    // Test for deleting border.
    func testDeleteBorder() throws {
      let remoteFileName = "TestDeleteBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBorderRequest(name: remoteFileName, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      _ = try super.getApi().deleteBorder(request: request);
    }

    // Test for deleting border online.
    func testDeleteBorderOnline() throws {
      let request = DeleteBorderOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().deleteBorderOnline(request: request);
    }

    // Test for updating border.
    func testUpdateBorder() throws {
      let remoteFileName = "TestUpdateBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBorderPropertiesColor = XmlColor();
      requestBorderPropertiesColor.setWeb(web: "#AABBCC");

      let requestBorderProperties = Border();
      requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
      requestBorderProperties.setColor(color: requestBorderPropertiesColor);
      requestBorderProperties.setDistanceFromText(distanceFromText: 6.0);
      requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
      requestBorderProperties.setLineWidth(lineWidth: 2.0);
      requestBorderProperties.setShadow(shadow: true);


      let request = UpdateBorderRequest(name: remoteFileName, borderType: "left", borderProperties: requestBorderProperties, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().updateBorder(request: request);
      XCTAssertNotNil(actual.getBorder());
      XCTAssertNotNil(actual.getBorder()!.getColor());
      XCTAssertEqual(actual.getBorder()!.getColor()!.getWeb(), "#AABBCC");
      XCTAssertEqual(actual.getBorder()!.getDistanceFromText(), 6.0);
      XCTAssertEqual(actual.getBorder()!.getLineWidth(), 2.0);
      XCTAssertEqual(actual.getBorder()!.getShadow(), true);
    }

    // Test for updating border online.
    func testUpdateBorderOnline() throws {
      let requestBorderPropertiesColor = XmlColor();
      requestBorderPropertiesColor.setWeb(web: "#AABBCC");

      let requestBorderProperties = Border();
      requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
      requestBorderProperties.setColor(color: requestBorderPropertiesColor);
      requestBorderProperties.setDistanceFromText(distanceFromText: 6);
      requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
      requestBorderProperties.setLineWidth(lineWidth: 2);
      requestBorderProperties.setShadow(shadow: true);


      let request = UpdateBorderOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
      _ = try super.getApi().updateBorderOnline(request: request);
    }
}
