/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FieldTests.swift">
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

// Example of how to work with field.
class FieldTests: BaseTestContext {
    static var allTests = [
        ("testGetFields", testGetFields),
        ("testGetFieldsWithoutNodePath", testGetFieldsWithoutNodePath),
        ("testGetField", testGetField),
        ("testGetFieldWithoutNodePath", testGetFieldWithoutNodePath),
        ("testInsertField", testInsertField),
        ("testInsertFieldWithoutNodePath", testInsertFieldWithoutNodePath),
        ("testUpdateField", testUpdateField),
        ("testInsertPageNumbers", testInsertPageNumbers),
        ("testDeleteField", testDeleteField),
        ("testDeleteFieldWithoutNodePath", testDeleteFieldWithoutNodePath),
        ("testDeleteParagraphFields", testDeleteParagraphFields),
        ("testDeleteParagraphFieldsWithoutNodePath", testDeleteParagraphFieldsWithoutNodePath),
        ("testDeleteSectionFields", testDeleteSectionFields),
        ("testDeleteSectionFieldsWithoutNodePath", testDeleteSectionFieldsWithoutNodePath),
        ("testDeleteSectionParagraphFields", testDeleteSectionParagraphFields),
        ("testDeleteDocumentFields", testDeleteDocumentFields),
        ("testUpdateDocumentFields", testUpdateDocumentFields)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Fields";
    let textFolder = "DocumentElements/Text";
    let fieldFolder = "DocumentElements/Fields";

    // Test for getting fields.
    func testGetFields() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getFields(request: request);
    }

    // Test for getting fields without node path.
    func testGetFieldsWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getFields(request: request);
    }

    // Test for getting field by index.
    func testGetField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      _ = try super.getApi().getField(request: request);
    }

    // Test for getting field by index without node path.
    func testGetFieldWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestGetFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getField(request: request);
    }

    // Test for putting field.
    func testInsertField() throws {
      let localFileName = "SampleWordDocument.docx";
      let remoteFileName = "TestInsertField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(textFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldInsert();
      requestField.setFieldCode(fieldCode: "{ NUMPAGES }");


      let request = InsertFieldRequest(name: remoteFileName, field: requestField, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      _ = try super.getApi().insertField(request: request);
    }

    // Test for putting field without node path.
    func testInsertFieldWithoutNodePath() throws {
      let localFileName = "SampleWordDocument.docx";
      let remoteFileName = "TestInsertFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(textFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldInsert();
      requestField.setFieldCode(fieldCode: "{ NUMPAGES }");


      let request = InsertFieldRequest(name: remoteFileName, field: requestField, folder: remoteDataFolder);
      _ = try super.getApi().insertField(request: request);
    }

    // Test for posting field.
    func testUpdateField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestUpdateField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestField = FieldUpdate();
      requestField.setFieldCode(fieldCode: "{ NUMPAGES }");


      let request = UpdateFieldRequest(name: remoteFileName, field: requestField, index: 0, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      _ = try super.getApi().updateField(request: request);
    }

    // Test for inserting page numbers field.
    func testInsertPageNumbers() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestInsertPageNumbers.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestPageNumber = PageNumber();
      requestPageNumber.setAlignment(alignment: "center");
      requestPageNumber.setFormat(format: "{PAGE} of {NUMPAGES}");


      let request = InsertPageNumbersRequest(name: remoteFileName, pageNumber: requestPageNumber, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().insertPageNumbers(request: request);
    }

    // Test for deleting field.
    func testDeleteField() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestDeleteField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteField(request: request);
    }

    // Test for deleting field without node path.
    func testDeleteFieldWithoutNodePath() throws {
      let localFileName = "GetField.docx";
      let remoteFileName = "TestDeleteFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      try super.getApi().deleteField(request: request);
    }

    // Test for deleting paragraph fields.
    func testDeleteParagraphFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting paragraph fields without node path.
    func testDeleteParagraphFieldsWithoutNodePath() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteParagraphFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting section fields.
    func testDeleteSectionFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting section fields without node path.
    func testDeleteSectionFieldsWithoutNodePath() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting paragraph fields in section.
    func testDeleteSectionParagraphFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for deleting fields.
    func testDeleteDocumentFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestDeleteSectionParagraphFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFieldsRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteFields(request: request);
    }

    // Test for posting updated fields.
    func testUpdateDocumentFields() throws {
      let localFileName = "test_multi_pages.docx";
      let remoteFileName = "TestUpdateDocumentFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/" + localFileName, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = UpdateFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().updateFields(request: request);
    }
}
