/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="MathObjectTests.swift">
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

// Example of how to work with MathObjects.
class MathObjectTests: BaseTestContext {
    static var allTests = [
        ("testGetOfficeMathObjects", testGetOfficeMathObjects),
        ("testGetOfficeMathObjectsWithoutNodePath", testGetOfficeMathObjectsWithoutNodePath),
        ("testGetOfficeMathObject", testGetOfficeMathObject),
        ("testGetOfficeMathObjectWithoutNodePath", testGetOfficeMathObjectWithoutNodePath),
        ("testRenderMathObject", testRenderMathObject),
        ("testRenderMathObjectWithoutNodePath", testRenderMathObjectWithoutNodePath),
        ("testDeleteOfficeMathObject", testDeleteOfficeMathObject),
        ("testDeleteOfficeMathObjectWithoutNodePath", testDeleteOfficeMathObjectWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/MathObjects";
    let localFile = "DocumentElements/MathObjects/MathObjects.docx";

    // Test for getting mathObjects.
    func testGetOfficeMathObjects() throws {
      let remoteFileName = "TestGetOfficeMathObjects.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectsRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().getOfficeMathObjects(request: request);
    }

    // Test for getting mathObjects without node path.
    func testGetOfficeMathObjectsWithoutNodePath() throws {
      let remoteFileName = "TestGetOfficeMathObjectsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getOfficeMathObjects(request: request);
    }

    // Test for getting mathObject.
    func testGetOfficeMathObject() throws {
      let remoteFileName = "TestGetOfficeMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().getOfficeMathObject(request: request);
    }

    // Test for getting mathObject without node path.
    func testGetOfficeMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestGetOfficeMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetOfficeMathObjectRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getOfficeMathObject(request: request);
    }

    // Test for rendering mathObject.
    func testRenderMathObject() throws {
      let remoteFileName = "TestRenderMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderMathObjectRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderMathObject(request: request);
    }

    // Test for rendering mathObject without node path.
    func testRenderMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestRenderMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderMathObjectRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderMathObject(request: request);
    }

    // Test for deleting mathObject.
    func testDeleteOfficeMathObject() throws {
      let remoteFileName = "TestDeleteOfficeMathObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteOfficeMathObjectRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteOfficeMathObject(request: request);
    }

    // Test for deleting mathObject without node path.
    func testDeleteOfficeMathObjectWithoutNodePath() throws {
      let remoteFileName = "TestDeleteOfficeMathObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteOfficeMathObjectRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteOfficeMathObject(request: request);
    }
}
