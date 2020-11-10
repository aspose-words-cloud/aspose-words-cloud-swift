/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableBorderTests.swift">
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

// Example of how to work with table borders.
class TableBorderTests: BaseTestContext {
    static var allTests = [
        ("testGetBorders", testGetBorders),
        ("testGetBorder", testGetBorder),
        ("testDeleteBorders", testDeleteBorders),
        ("testDeleteBorder", testDeleteBorder),
        ("testUpdateBorder", testUpdateBorder)
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

    // Test for deleting borders.
    func testDeleteBorders() throws {
      let remoteFileName = "TestDeleteBorders.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBordersRequest(name: remoteFileName, nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().deleteBorders(request: request);
      XCTAssertNotNil(actual.getBorders());
      XCTAssertNotNil(actual.getBorders()!.getList());
      XCTAssertEqual(actual.getBorders()!.getList()!.count, 6);
      XCTAssertNotNil(actual.getBorders()!.getList()![0].getColor());
      XCTAssertEqual(actual.getBorders()!.getList()![0].getColor()!.getWeb(), "");
    }

    // Test for deleting border.
    func testDeleteBorder() throws {
      let remoteFileName = "TestDeleteBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteBorderRequest(name: remoteFileName, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().deleteBorder(request: request);
      XCTAssertNotNil(actual.getBorder());
      XCTAssertNotNil(actual.getBorder()!.getColor());
      XCTAssertEqual(actual.getBorder()!.getColor()!.getWeb(), "");
    }

    // Test for updating border.
    func testUpdateBorder() throws {
      let remoteFileName = "TestUpdateBorder.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestBorderPropertiesColor = XmlColor();
      requestBorderPropertiesColor.setAlpha(alpha: 2);

      let requestBorderProperties = Border();
      requestBorderProperties.setBorderType(borderType: Border.BorderType._left);
      requestBorderProperties.setColor(color: requestBorderPropertiesColor);
      requestBorderProperties.setDistanceFromText(distanceFromText: 6.0);
      requestBorderProperties.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
      requestBorderProperties.setLineWidth(lineWidth: 2.0);
      requestBorderProperties.setShadow(shadow: true);


      let request = UpdateBorderRequest(name: remoteFileName, borderProperties: requestBorderProperties, borderType: "left", nodePath: "tables/1/rows/0/cells/0", folder: remoteDataFolder);
      let actual = try super.getApi().updateBorder(request: request);
      XCTAssertNotNil(actual.getBorder());
      XCTAssertNotNil(actual.getBorder()!.getColor());
      XCTAssertEqual(actual.getBorder()!.getColor()!.getWeb(), "#000002");
      XCTAssertEqual(actual.getBorder()!.getDistanceFromText(), 6.0);
      XCTAssertEqual(actual.getBorder()!.getLineWidth(), 2.0);
      XCTAssertTrue(actual.getBorder()!.getShadow());
    }
}
