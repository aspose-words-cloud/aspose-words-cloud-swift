import XCTest
@testable import AsposeWordsCloud

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
        ("testDeleteSectionParagraphFields", testDeleteSectionParagraphFields),
        ("testDeleteDocumentFields", testDeleteDocumentFields),
        ("testUpdateDocumentFields", testUpdateDocumentFields),
        ("testUpdateFormField", testUpdateFormField),
        ("testUpdateFormFieldWithoutNodePath", testUpdateFormFieldWithoutNodePath),
        ("testGetFormField", testGetFormField),
        ("testGetFormFieldWithoutNodePath", testGetFormFieldWithoutNodePath),
        ("testGetFormFields", testGetFormFields),
        ("testGetFormFieldsWithoutNodePath", testGetFormFieldsWithoutNodePath),
        ("testInsertFormField", testInsertFormField),
        ("testInsertFormFieldWithoutNodePath", testInsertFormFieldWithoutNodePath),
        ("testDeleteFormField", testDeleteFormField),
        ("testDeleteFormFieldWithoutNodePath", testDeleteFormFieldWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Field/" + action;
    }
    
    private static let fieldFolder = "DocumentElements/Fields";
    private static let formFieldFolder = "DocumentElements/FormFields";
    private static let textFolder = "DocumentElements/Text";

    func testGetFields() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFields.docx";
        let fullName = (getRemoteDataFolder(action: "GetFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFieldsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "GetFields"));
        let actual = try super.getApi().getFields(request: request);
        XCTAssert(actual.getFields()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetFieldsWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFieldsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFieldsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetFieldsWithoutNodePath"));
        let actual = try super.getApi().getFieldsWithoutNodePath(request: request);
        XCTAssert(actual.getFields()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetField.docx";
        let fullName = (getRemoteDataFolder(action: "GetField") + "/" + remoteName);
        let fieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFieldRequest(name: remoteName, nodePath: "sections/0/paragraphs/0", index: fieldIndex, folder: getRemoteDataFolder(action: "GetField"));
        let actual = try super.getApi().getField(request: request);
        XCTAssert(actual.getField() != nil);
    }
    

    func testGetFieldWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFieldWithoutNodePath") + "/" + remoteName);
        let fieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFieldWithoutNodePathRequest(name: remoteName, index: fieldIndex, folder: getRemoteDataFolder(action: "GetFieldWithoutNodePath"));
        let actual = try super.getApi().getFieldWithoutNodePath(request: request);
        XCTAssert(actual.getField() != nil);
    }
    

    func testInsertField() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestInsertField.docx";
        let fullName = (getRemoteDataFolder(action: "InsertField") + "/" + remoteName);
        
        let body = FieldInsert();
        body.setFieldCode(fieldCode: "{ NUMPAGES }");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.textFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFieldRequest(name: remoteName, field: body, nodePath: "sections/0/paragraphs/0", folder: getRemoteDataFolder(action: "InsertField"));
        let actual = try super.getApi().insertField(request: request);            
        XCTAssert(actual.getField() != nil);
    }

    func testInsertFieldWithoutNodePath() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestInsertFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFieldWithoutNodePath") + "/" + remoteName);
        
        let body = FieldInsert();
        body.setFieldCode(fieldCode: "{ NUMPAGES }");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.textFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFieldWithoutNodePathRequest(name: remoteName, field: body, folder: getRemoteDataFolder(action: "InsertFieldWithoutNodePath"));
        let actual = try super.getApi().insertFieldWithoutNodePath(request: request);
        XCTAssert(actual.getField() != nil);
    }
    

    func testUpdateField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestUpdateField.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateField") + "/" + remoteName);
        let fieldIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = FieldUpdate();
        body.setFieldCode(fieldCode: "{ NUMPAGES }");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFieldRequest(name: remoteName, field: body, nodePath: "sections/0/paragraphs/0", index: fieldIndex, folder: getRemoteDataFolder(action: "UpdateField"), destFileName: destFileName);
        let actual = try super.getApi().updateField(request: request);
        XCTAssert(actual.getField() != nil);
    }
    

    func testInsertPageNumbers() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertPageNumbers.docx";
        let fullName = (getRemoteDataFolder(action: "InsertPageNumbers") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = PageNumber();
        body.setAlignment(alignment: "center");
        body.setFormat(format: "{PAGE} of {NUMPAGES}");
        body.setIsTop(isTop: false);
        body.setSetPageNumberOnFirstPage(setPageNumberOnFirstPage: false);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertPageNumbersRequest(name: remoteName, pageNumber: body, folder: getRemoteDataFolder(action: "InsertPageNumbers"), destFileName: destFileName);
        let actual = try super.getApi().insertPageNumbers(request: request);
        XCTAssert(actual.getDocument() != nil);
    }
    

    func testDeleteField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestDeleteField.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteField") + "/" + remoteName);
        let fieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldRequest(name: remoteName, nodePath: "sections/0/paragraphs/0", index: fieldIndex, folder: getRemoteDataFolder(action: "DeleteField"));
        try super.getApi().deleteField(request: request);
    }
    

    func testDeleteFieldWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestDeleteFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFieldWithoutNodePath") + "/" + remoteName);
        let fieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldWithoutNodePathRequest(name: remoteName, index: fieldIndex, folder: getRemoteDataFolder(action: "DeleteFieldWithoutNodePath"));
        try super.getApi().deleteFieldWithoutNodePath(request: request);
    }
    

    func testDeleteParagraphFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteParagraphFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldsRequest(name: remoteName, nodePath: "paragraphs/0", folder: getRemoteDataFolder(action: "DeleteParagraphFields"));
        try super.getApi().deleteFields(request: request);
    }
    

    func testDeleteParagraphFieldsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteParagraphFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphFieldsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "DeleteParagraphFieldsWithoutNodePath"));
        try super.getApi().deleteFieldsWithoutNodePath(request: request);
    }
    

    func testDeleteSectionFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSectionFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSectionFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "DeleteSectionFields"));
        try super.getApi().deleteFields(request: request);
    }
    

    func testDeleteSectionParagraphFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSectionParagraphFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSectionParagraphFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldsRequest(name: remoteName, nodePath: "sections/0/paragraphs/0", folder: getRemoteDataFolder(action: "DeleteSectionParagraphFields"));
        try super.getApi().deleteFields(request: request);
    }
    

    func testDeleteDocumentFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFieldsRequest(name: remoteName, nodePath: "", folder: getRemoteDataFolder(action: "DeleteDocumentFields"));
        try super.getApi().deleteFields(request: request);
    }
    

    func testUpdateDocumentFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDocumentFields.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDocumentFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFieldsRequest(name: remoteName, folder: getRemoteDataFolder(action: "UpdateDocumentFields"));
        let actual = try super.getApi().updateFields(request: request);
        XCTAssert(actual.getDocument() != nil);
    }

    func testUpdateFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestUpdateFormField.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFormField") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = FormFieldTextInput();
        body.setName(name: "FullName");
        body.setEnabled(enabled: true);
        body.setCalculateOnExit(calculateOnExit: true);
        body.setStatusText(statusText: "");
        body.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        body.setTextInputDefault(textInputDefault: "");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFormFieldRequest(name: remoteName, formField: body, nodePath: "sections/0", index: formfieldIndex, folder: getRemoteDataFolder(action: "UpdateFormField"), destFileName: destFileName);
        let actual = try super.getApi().updateFormField(request: request);
        
        XCTAssert("FullName" == actual.getFormField()?.getName());
        XCTAssert(true == actual.getFormField()?.getEnabled());
    }
    

    func testUpdateFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestUpdateFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFormFieldWithoutNodePath") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = FormFieldTextInput();
        body.setName(name: "FullName");
        body.setEnabled(enabled: true);
        body.setCalculateOnExit(calculateOnExit: true);
        body.setStatusText(statusText: "");
        body.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        body.setTextInputDefault(textInputDefault: "");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateFormFieldWithoutNodePathRequest(name: remoteName, formField: body, index: formfieldIndex, folder: getRemoteDataFolder(action: "UpdateFormFieldWithoutNodePath"), destFileName: destFileName);
        let actual = try super.getApi().updateFormFieldWithoutNodePath(request: request);
        XCTAssert("FullName" == actual.getFormField()?.getName());
        XCTAssert(true == actual.getFormField()?.getEnabled());
    }
    

    func testGetFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormField.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormField") + "/" + remoteName);
        let formfieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFormFieldRequest(name: remoteName, nodePath: "sections/0", index: formfieldIndex, folder: getRemoteDataFolder(action: "GetFormField"));
        let actual = try super.getApi().getFormField(request: request);
        XCTAssert(actual.getFormField() != nil);
    }
    

    func testGetFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFieldWithoutNodePath") + "/" + remoteName);
        let formfieldIndex = 0;
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFormFieldWithoutNodePathRequest(name: remoteName, index: formfieldIndex, folder: getRemoteDataFolder(action: "GetFormFieldWithoutNodePath"));
        let actual = try super.getApi().getFormFieldWithoutNodePath(request: request);
        XCTAssert(actual.getFormField() != nil);
    }
    

    func testGetFormFields() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFields.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFields") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFormFieldsRequest(name: remoteName, nodePath: "sections/0", folder: getRemoteDataFolder(action: "GetFormFields"));
        let actual = try super.getApi().getFormFields(request: request);
        XCTAssert(actual.getFormFields()?.getList()?.count ?? 0 > 0);
    }
    

    func testGetFormFieldsWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFieldsWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetFormFieldsWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetFormFieldsWithoutNodePath"));
        let actual = try super.getApi().getFormFieldsWithoutNodePath(request: request);
        XCTAssert(actual.getFormFields()?.getList()?.count ?? 0 > 0);
    }
    

    func testInsertFormField() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertFormField.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFormField") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        
        let body = FormFieldTextInput();
        body.setName(name: "FullName");
        body.setEnabled(enabled: true);
        body.setCalculateOnExit(calculateOnExit: true);
        body.setStatusText(statusText: "");
        body.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        body.setTextInputDefault(textInputDefault: "123");
        body.setTextInputFormat(textInputFormat: "UPPERCASE");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFormFieldRequest(name: remoteName, formField: body, nodePath: "sections/0/paragraphs/0", folder: getRemoteDataFolder(action: "InsertFormField"), destFileName: destFileName);
        let actual = try super.getApi().insertFormField(request: request);
        XCTAssert(actual.getFormField() != nil);
    }
    

    func testInsertFormFieldWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFormFieldWithoutNodePath") + "/" + remoteName);
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
       
        let body = FormFieldTextInput();
        body.setName(name: "FullName");
        body.setEnabled(enabled: true);
        body.setCalculateOnExit(calculateOnExit: true);
        body.setStatusText(statusText: "");
        body.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
        body.setTextInputDefault(textInputDefault: "123");
        body.setTextInputFormat(textInputFormat: "UPPERCASE");
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertFormFieldWithoutNodePathRequest(name: remoteName, formField: body, folder: getRemoteDataFolder(action: "InsertFormFieldWithoutNodePath"), destFileName: destFileName);
        let actual = try super.getApi().insertFormFieldWithoutNodePath(request: request);
        XCTAssert(actual.getFormField() != nil);
    }
    

    func testDeleteFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestDeleteFormField.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFormField") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFormFieldRequest(name: remoteName, nodePath: "sections/0", index: formfieldIndex, folder: getRemoteDataFolder(action: "DeleteFormField"), destFileName: destFileName);
        try super.getApi().deleteFormField(request: request);
    }
    

    func testDeleteFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestDeleteFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFormFieldWithoutNodePath") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (super.getRemoteTestOut() + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(FieldTests.formFieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteFormFieldWithoutNodePathRequest(name: remoteName, index: formfieldIndex, folder: getRemoteDataFolder(action: "DeleteFormFieldWithoutNodePath"), destFileName: destFileName);
        try super.getApi().deleteFormFieldWithoutNodePath(request: request);
    }
}
