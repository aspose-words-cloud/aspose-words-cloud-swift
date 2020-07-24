/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DrawingObjectsTests.swift">
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

// Example of how to get drawing objects.
class DrawingObjectsTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentDrawingObjects", testGetDocumentDrawingObjects),
        ("testGetDocumentDrawingObjectsWithoutNodePath", testGetDocumentDrawingObjectsWithoutNodePath),
        ("testGetDocumentDrawingObjectByIndex", testGetDocumentDrawingObjectByIndex),
        ("testGetDocumentDrawingObjectByIndexWithoutNodePath", testGetDocumentDrawingObjectByIndexWithoutNodePath),
        ("testRenderDrawingObject", testRenderDrawingObject),
        ("testRenderDrawingObjectWithoutNodePath", testRenderDrawingObjectWithoutNodePath),
        ("testGetDocumentDrawingObjectImageData", testGetDocumentDrawingObjectImageData),
        ("testGetDocumentDrawingObjectImageDataWithoutNodePath", testGetDocumentDrawingObjectImageDataWithoutNodePath),
        ("testGetDocumentDrawingObjectOleData", testGetDocumentDrawingObjectOleData),
        ("testGetDocumentDrawingObjectOleDataWithoutNodePath", testGetDocumentDrawingObjectOleDataWithoutNodePath),
        ("testInsertDrawingObject", testInsertDrawingObject),
        ("testInsertDrawingObjectWithoutNodePath", testInsertDrawingObjectWithoutNodePath),
        ("testDeleteDrawingObject", testDeleteDrawingObject),
        ("testDeleteDrawingObjectWithoutNodePath", testDeleteDrawingObjectWithoutNodePath),
        ("testUpdateDrawingObject", testUpdateDrawingObject),
        ("testUpdateDrawingObjectWithoutNodePath", testUpdateDrawingObjectWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DrawingObjectss";
    let localFile = "Common/test_multi_pages.docx";
    let localDrawingFile = "DocumentElements/DrawingObjects/sample_EmbeddedOLE.docx";

    // Test for getting drawing objects from document.
    func testGetDocumentDrawingObjects() throws {
      let remoteFileName = "TestGetDocumentDrawingObjects.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjects(request: request);
    }

    // Test for getting drawing objects from document without node path.
    func testGetDocumentDrawingObjectsWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjects(request: request);
    }

    // Test for getting drawing object by specified index.
    func testGetDocumentDrawingObjectByIndex() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectByIndex.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectByIndexRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectByIndex(request: request);
    }

    // Test for getting drawing object by specified index without node path.
    func testGetDocumentDrawingObjectByIndexWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectByIndexWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectByIndexRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectByIndex(request: request);
    }

    // Test for getting drawing object by specified index and format.
    func testRenderDrawingObject() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectByIndexWithFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderDrawingObjectRequest(name: remoteFileName, format: "png", index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().renderDrawingObject(request: request);
    }

    // Test for getting drawing object by specified index and format without node path.
    func testRenderDrawingObjectWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectByIndexWithFormatWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderDrawingObjectRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderDrawingObject(request: request);
    }

    // Test for reading drawing object's image data.
    func testGetDocumentDrawingObjectImageData() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectImageData.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectImageDataRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectImageData(request: request);
    }

    // Test for reading drawing object's image data without node path.
    func testGetDocumentDrawingObjectImageDataWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectImageDataWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectImageDataRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectImageData(request: request);
    }

    // Test for getting drawing object OLE data.
    func testGetDocumentDrawingObjectOleData() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectOleData.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localDrawingFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectOleDataRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectOleData(request: request);
    }

    // Test for getting drawing object OLE data without node path.
    func testGetDocumentDrawingObjectOleDataWithoutNodePath() throws {
      let remoteFileName = "TestGetDocumentDrawingObjectOleDataWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localDrawingFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentDrawingObjectOleDataRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getDocumentDrawingObjectOleData(request: request);
    }

    // Test for adding drawing object.
    func testInsertDrawingObject() throws {
      let remoteFileName = "TestInsetDrawingObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDrawingObject = DrawingObjectInsert();
      requestDrawingObject.setHeight(height: 0);
      requestDrawingObject.setLeft(_left: 0);
      requestDrawingObject.setTop(top: 0);
      requestDrawingObject.setWidth(width: 0);
      requestDrawingObject.setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin);
      requestDrawingObject.setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin);
      requestDrawingObject.setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);


      let request = InsertDrawingObjectRequest(name: remoteFileName, drawingObject: requestDrawingObject, imageFile: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().insertDrawingObject(request: request);
    }

    // Test for adding drawing object without node path.
    func testInsertDrawingObjectWithoutNodePath() throws {
      let remoteFileName = "TestInsetDrawingObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDrawingObject = DrawingObjectInsert();
      requestDrawingObject.setHeight(height: 0);
      requestDrawingObject.setLeft(_left: 0);
      requestDrawingObject.setTop(top: 0);
      requestDrawingObject.setWidth(width: 0);
      requestDrawingObject.setRelativeHorizontalPosition(relativeHorizontalPosition: DrawingObjectInsert.RelativeHorizontalPosition.margin);
      requestDrawingObject.setRelativeVerticalPosition(relativeVerticalPosition: DrawingObjectInsert.RelativeVerticalPosition.margin);
      requestDrawingObject.setWrapType(wrapType: DrawingObjectInsert.WrapType.inline);


      let request = InsertDrawingObjectRequest(name: remoteFileName, drawingObject: requestDrawingObject, imageFile: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, folder: remoteDataFolder);
      _ = try super.getApi().insertDrawingObject(request: request);
    }

    // Test for deleting drawing object.
    func testDeleteDrawingObject() throws {
      let remoteFileName = "TestDeleteDrawingObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteDrawingObjectRequest(name: remoteFileName, index: 0, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteDrawingObject(request: request);
    }

    // Test for deleting drawing object without node path.
    func testDeleteDrawingObjectWithoutNodePath() throws {
      let remoteFileName = "TestDeleteDrawingObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteDrawingObjectRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteDrawingObject(request: request);
    }

    // Test for updating drawing object.
    func testUpdateDrawingObject() throws {
      let remoteFileName = "TestUpdateDrawingObject.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDrawingObject = DrawingObjectUpdate();
      requestDrawingObject.setLeft(_left: 0);


      let request = UpdateDrawingObjectRequest(name: remoteFileName, drawingObject: requestDrawingObject, imageFile: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().updateDrawingObject(request: request);
    }

    // Test for updating drawing object without node path.
    func testUpdateDrawingObjectWithoutNodePath() throws {
      let remoteFileName = "TestUpdateDrawingObjectWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestDrawingObject = DrawingObjectUpdate();
      requestDrawingObject.setLeft(_left: 0);


      let request = UpdateDrawingObjectRequest(name: remoteFileName, drawingObject: requestDrawingObject, imageFile: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent("Common/aspose-cloud.png", isDirectory: false))!, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateDrawingObject(request: request);
    }
}
