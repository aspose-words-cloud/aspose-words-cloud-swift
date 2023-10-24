/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldTests.swift">
 *   Copyright (c) 2023 Aspose.Words for Cloud
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
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
class FormFieldTests: BaseTestContext {
    static var allTests = [
        ("testUpdateFormField", testUpdateFormField),
        ("testUpdateFormFieldOnline", testUpdateFormFieldOnline),
        ("testUpdateFormFieldWithoutNodePath", testUpdateFormFieldWithoutNodePath),
        ("testGetFormField", testGetFormField),
        ("testGetFormFieldOnline", testGetFormFieldOnline),
        ("testGetFormFieldWithoutNodePath", testGetFormFieldWithoutNodePath),
        ("testGetFormFields", testGetFormFields),
        ("testGetFormFieldsOnline", testGetFormFieldsOnline),
        ("testGetFormFieldsWithoutNodePath", testGetFormFieldsWithoutNodePath),
        ("testInsertFormField", testInsertFormField),
        ("testInsertFormFieldOnline", testInsertFormFieldOnline),
        ("testInsertFormFieldWithoutNodePath", testInsertFormFieldWithoutNodePath),
        ("testDeleteFormField", testDeleteFormField),
        ("testDeleteFormFieldOnline", testDeleteFormFieldOnline),
        ("testDeleteFormFieldWithoutNodePath", testDeleteFormFieldWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/FormFields";
    let fieldFolder = "DocumentElements/FormFields";

    // Test for posting form field.
    func testUpdateFormField() throws {
      let remoteFileName = "TestUpdateFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "No name")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = UpdateFormFieldRequest(name: remoteFileName, index: 0, formField: requestFormField as! FormFieldTextInput, nodePath: "sections/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().updateFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
      XCTAssertEqual(actual.getFormField()!.getStatusText(), "");
    }

    // Test for posting form field online.
    func testUpdateFormFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false))!;
      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "No name")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = UpdateFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, index: 0, nodePath: "sections/0");
      _ = try super.getApi().updateFormFieldOnline(request: request);
    }

    // Test for posting form field without node path.
    func testUpdateFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestUpdateFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "No name")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = UpdateFormFieldRequest(name: remoteFileName, index: 0, formField: requestFormField as! FormFieldTextInput, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().updateFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
      XCTAssertEqual(actual.getFormField()!.getStatusText(), "");
    }

    // Test for getting form field.
    func testGetFormField() throws {
      let remoteFileName = "TestGetFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().getFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
    }

    // Test for getting form field online.
    func testGetFormFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false))!;
      let request = GetFormFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
      _ = try super.getApi().getFormFieldOnline(request: request);
    }

    // Test for getting form field without node path.
    func testGetFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestGetFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
    }

    // Test for getting form fields.
    func testGetFormFields() throws {
      let remoteFileName = "TestGetFormFields.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldsRequest(name: remoteFileName, nodePath: "sections/0", folder: remoteDataFolder);
      let actual = try super.getApi().getFormFields(request: request);
      XCTAssertNotNil(actual.getFormFields());
      XCTAssertNotNil(actual.getFormFields()!.getList());
      XCTAssertEqual(actual.getFormFields()!.getList()!.count, 5);
      XCTAssertEqual(actual.getFormFields()!.getList()![0].getName(), "FullName");
    }

    // Test for getting form fields online.
    func testGetFormFieldsOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false))!;
      let request = GetFormFieldsOnlineRequest(document: requestDocument, nodePath: "sections/0");
      _ = try super.getApi().getFormFieldsOnline(request: request);
    }

    // Test for getting form fields without node path.
    func testGetFormFieldsWithoutNodePath() throws {
      let remoteFileName = "TestGetFormFieldsWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetFormFieldsRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getFormFields(request: request);
      XCTAssertNotNil(actual.getFormFields());
      XCTAssertNotNil(actual.getFormFields()!.getList());
      XCTAssertEqual(actual.getFormFields()!.getList()!.count, 5);
      XCTAssertEqual(actual.getFormFields()!.getList()![0].getName(), "FullName");
    }

    // Test for insert form field without node path.
    func testInsertFormField() throws {
      let remoteFileName = "TestInsertFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "UPPERCASE")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "123")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = InsertFormFieldRequest(name: remoteFileName, formField: requestFormField as! FormFieldTextInput, nodePath: "sections/0/paragraphs/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().insertFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
      XCTAssertEqual(actual.getFormField()!.getStatusText(), "");
    }

    // Test for insert form field without node path online.
    func testInsertFormFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false))!;
      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "UPPERCASE")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "123")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = InsertFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, nodePath: "sections/0/paragraphs/0");
      _ = try super.getApi().insertFormFieldOnline(request: request);
    }

    // Test for insert form field without node path.
    func testInsertFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestInsertFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent("Common/test_multi_pages.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormField = FormFieldTextInput()
        .setTextInputFormat(textInputFormat: "UPPERCASE")
        .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
        .setTextInputDefault(textInputDefault: "123")
        .setName(name: "FullName")
        .setEnabled(enabled: true)
        .setStatusText(statusText: "")
        .setCalculateOnExit(calculateOnExit: true);
      let request = InsertFormFieldRequest(name: remoteFileName, formField: requestFormField as! FormFieldTextInput, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      let actual = try super.getApi().insertFormField(request: request);
      XCTAssertNotNil(actual.getFormField());
      XCTAssertEqual(actual.getFormField()!.getName(), "FullName");
      XCTAssertEqual(actual.getFormField()!.getStatusText(), "");
    }

    // Test for deleting form field.
    func testDeleteFormField() throws {
      let remoteFileName = "TestDeleteFormField.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFormFieldRequest(name: remoteFileName, index: 0, nodePath: "sections/0", folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteFormField(request: request);
    }

    // Test for deleting form field online.
    func testDeleteFormFieldOnline() throws {
      let requestDocument = InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false))!;
      let request = DeleteFormFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
      _ = try super.getApi().deleteFormFieldOnline(request: request);
    }

    // Test for deleting form field without node path.
    func testDeleteFormFieldWithoutNodePath() throws {
      let remoteFileName = "TestDeleteFormFieldWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(fieldFolder + "/FormFilled.docx", isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteFormFieldRequest(name: remoteFileName, index: 0, folder: remoteDataFolder, destFileName: BaseTestContext.getRemoteTestOut() + "/" + remoteFileName);
      try super.getApi().deleteFormField(request: request);
    }
}
