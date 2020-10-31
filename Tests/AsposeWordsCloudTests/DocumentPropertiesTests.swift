/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="DocumentPropertiesTests.swift">
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

// Example of how to get document properties.
class DocumentPropertiesTests: BaseTestContext {
    static var allTests = [
        ("testGetDocumentProperties", testGetDocumentProperties),
        ("testGetDocumentProperty", testGetDocumentProperty),
        ("testDeleteDocumentProperty", testDeleteDocumentProperty),
        ("testUpdateDocumentProperty", testUpdateDocumentProperty)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/DocumentProperties";
    let localFile = "Common/test_multi_pages.docx";

    // Test for getting document properties.
    func testGetDocumentProperties() throws {
      let remoteFileName = "TestGetDocumentProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentPropertiesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getDocumentProperties(request: request);
      assert(actual.getDocumentProperties() != nil);
      assert(actual.getDocumentProperties()!.getList() != nil);
      assert(24 == actual.getDocumentProperties()!.getList()!.count);
      assert(actual.getDocumentProperties()!.getList()![0] != nil);
      assert( actual.getDocumentProperties()!.getList()![0].getName()!.hasPrefix("Author") == true);
      assert( actual.getDocumentProperties()!.getList()![0].getValue()!.hasPrefix("") == true);
    }

    // A test for GetDocumentProperty.
    func testGetDocumentProperty() throws {
      let remoteFileName = "TestGetDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetDocumentPropertyRequest(name: remoteFileName, propertyName: "Author", folder: remoteDataFolder);
      let actual = try super.getApi().getDocumentProperty(request: request);
      assert(actual.getDocumentProperty() != nil);
      assert( actual.getDocumentProperty()!.getName()!.hasPrefix("Author") == true);
      assert( actual.getDocumentProperty()!.getValue()!.hasPrefix("") == true);
    }

    // Test for deleting document property.
    func testDeleteDocumentProperty() throws {
      let remoteFileName = "TestDeleteDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteDocumentPropertyRequest(name: remoteFileName, propertyName: "testProp", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteDocumentProperty(request: request);
    }

    // Test for updating document property.
    func testUpdateDocumentProperty() throws {
      let remoteFileName = "TestUpdateDocumentProperty.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperty = DocumentPropertyCreateOrUpdate();
      requestProperty.setValue(value: "Imran Anwar");


      let request = CreateOrUpdateDocumentPropertyRequest(name: remoteFileName, propertyName: "AsposeAuthor", property: requestProperty, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().createOrUpdateDocumentProperty(request: request);
      assert(actual.getDocumentProperty() != nil);
      assert( actual.getDocumentProperty()!.getName()!.hasPrefix("AsposeAuthor") == true);
      assert( actual.getDocumentProperty()!.getValue()!.hasPrefix("Imran Anwar") == true);
    }
}
