/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldTests.swift">
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

// Example of how to work with form field.
class FormFieldTests: BaseTestContext {
    static var allTests = [
        ("testUpdateFormField", testUpdateFormField),
        ("testUpdateFormFieldWithoutNodePath", testUpdateFormFieldWithoutNodePath),
        ("testGetFormField", testGetFormField),
        ("testGetFormFieldWithoutNodePath", testGetFormFieldWithoutNodePath),
        ("testGetFormFields", testGetFormFields),
        ("testGetFormFieldsWithoutNodePath", testGetFormFieldsWithoutNodePath),
        ("testInsertFormField", testInsertFormField),
        ("testInsertFormFieldWithoutNodePath", testInsertFormFieldWithoutNodePath),
        ("testDeleteFormField", testDeleteFormField),
        ("testDeleteFormFieldWithoutNodePath", testDeleteFormFieldWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/FormFields";
    let fieldFolder = "DocumentElements/FormFields";

    // Test for posting form field.
    func testUpdateFormField() throws {
      let remoteFileName = "TestUpdateFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput();
      requestFormField.setName(name: "FullName");
      requestFormField.setEnabled(enabled: true);
      requestFormField.setCalculateOnExit(calculateOnExit: true);
      requestFormField.setStatusText(statusText: "");
      requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
      requestFormField.setTextInputDefault(textInputDefault: "No name");


      let request = UpdateFormFieldRequest(name: remoteFileName, formField: requestFormField, index: 0, nodePath: "sections/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().updateFormField(request: request);
    }

    // Test for posting form field without node path.
    func testUpdateFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestUpdateFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput();
      requestFormField.setName(name: "FullName");
      requestFormField.setEnabled(enabled: true);
      requestFormField.setCalculateOnExit(calculateOnExit: true);
      requestFormField.setStatusText(statusText: "");
      requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
      requestFormField.setTextInputDefault(textInputDefault: "No name");


      let request = UpdateFormFieldRequest(name: remoteFileName, formField: requestFormField, index: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().updateFormField(request: request);
    }

    // Test for getting form field.
    func testGetFormField() throws {
      let remoteFileName = "TestGetFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getFormField(request: request);
    }

    // Test for getting form field without node path.
    func testGetFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestGetFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getFormField(request: request);
    }

    // Test for getting form fields.
    func testGetFormFields() throws {
      let remoteFileName = "TestGetFormFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      _ = try super.getApi().getFormFields(request: request);
    }

    // Test for getting form fields without node path.
    func testGetFormFieldsWithoutNodePath() throws {
      let remoteFileName = "TestGetFormFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getFormFields(request: request);
    }

    // Test for insert form field without node path.
    func testInsertFormField() throws {
      let remoteFileName = "TestInsertFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput();
      requestFormField.setName(name: "FullName");
      requestFormField.setEnabled(enabled: true);
      requestFormField.setCalculateOnExit(calculateOnExit: true);
      requestFormField.setStatusText(statusText: "");
      requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
      requestFormField.setTextInputDefault(textInputDefault: "123");
      requestFormField.setTextInputFormat(textInputFormat: "UPPERCASE");


      let request = InsertFormFieldRequest(name: remoteFileName, formField: requestFormField, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().insertFormField(request: request);
    }

    // Test for insert form field without node path.
    func testInsertFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestInsertFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput();
      requestFormField.setName(name: "FullName");
      requestFormField.setEnabled(enabled: true);
      requestFormField.setCalculateOnExit(calculateOnExit: true);
      requestFormField.setStatusText(statusText: "");
      requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
      requestFormField.setTextInputDefault(textInputDefault: "123");
      requestFormField.setTextInputFormat(textInputFormat: "UPPERCASE");


      let request = InsertFormFieldRequest(name: remoteFileName, formField: requestFormField, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      _ = try super.getApi().insertFormField(request: request);
    }

    // Test for deleting form field.
    func testDeleteFormField() throws {
      let remoteFileName = "TestDeleteFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFormFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteFormField(request: request);
    }

    // Test for deleting form field without node path.
    func testDeleteFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestDeleteFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFormFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteFormField(request: request);
    }
}
