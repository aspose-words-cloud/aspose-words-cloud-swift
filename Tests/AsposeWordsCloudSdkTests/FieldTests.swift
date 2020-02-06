import XCTest
@testable import AsposeWordsCloudSdk

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

    func testGetFields() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFields.docx";
        let fullName = (getRemoteDataFolder(action: "GetFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFieldsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "GetFields"));
        FieldsResponse actual = super.getApi().getFields(request);
    }
    

    func testGetFieldsWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFieldsWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFieldsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetFieldsWithoutNodePath"));
        FieldsResponse actual = super.getApi().getFieldsWithoutNodePath(request);
    }
    

    func testGetField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetField.docx";
        let fullName = (getRemoteDataFolder(action: "GetField") + "/" + remoteName);
        let fieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFieldRequest(remoteName, "sections/0/paragraphs/0", fieldIndex, getRemoteDataFolder(action: "GetField"));
        let actual = super.getApi().getField(request);
    }
    

    func testGetFieldWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestGetFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFieldWithoutNodePath") + "/" + remoteName);
        let fieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFieldWithoutNodePathRequest(remoteName, fieldIndex, getRemoteDataFolder(action: "GetFieldWithoutNodePath"));
        let actual = super.getApi().getFieldWithoutNodePath(request);
    }
    

    func testInsertField() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestInsertField.docx";
        let fullName = (getRemoteDataFolder(action: "InsertField") + "/" + remoteName);
        Field body = Field { Result = "3", FieldCode = "{ NUMPAGES }", NodeId = "0.0.3" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.textFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFieldRequest(remoteName, body, "sections/0/paragraphs/0", getRemoteDataFolder(action: "InsertField"));
        let actual = super.getApi().insertField(request);            
    }
    

    func testInsertFieldWithoutNodePath() throws {
        let localName = "SampleWordDocument.docx";
        let remoteName = "TestInsertFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFieldWithoutNodePath") + "/" + remoteName);
        Field body = Field { Result = "3", FieldCode = "{ NUMPAGES }", NodeId = "0.0.3" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.textFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFieldWithoutNodePathRequest(remoteName, body, getRemoteDataFolder(action: "InsertFieldWithoutNodePath"));
        let actual = super.getApi().insertFieldWithoutNodePath(request);
    }
    

    func testUpdateField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestUpdateField.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateField") + "/" + remoteName);
        let fieldIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = Field { Result = "3", FieldCode = "{ NUMPAGES }", NodeId = "0.0.3" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFieldRequest(remoteName, body, "sections/0/paragraphs/0", fieldIndex, getRemoteDataFolder(action: "UpdateField"), destFileName: destFileName);
        let actual = super.getApi().updateField(request);
    }
    

    func testInsertPageNumbers() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertPageNumbers.docx";
        let fullName = (getRemoteDataFolder(action: "InsertPageNumbers") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = PageNumber { Alignment = "center", Format = "{PAGE} of {NUMPAGES}" };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertPageNumbersRequest(remoteName, body, getRemoteDataFolder(action: "InsertPageNumbers"), destFileName: destFileName);
        let actual = super.getApi().insertPageNumbers(request);
    }
    

    func testDeleteField() throws {
        let localName = "GetField.docx";
        let remoteName = "TestDeleteField.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteField") + "/" + remoteName);
        let fieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldRequest(remoteName, "sections/0/paragraphs/0", fieldIndex, getRemoteDataFolder(action: "DeleteField"));
        super.getApi().deleteField(request);
    }
    

    func testDeleteFieldWithoutNodePath() throws {
        let localName = "GetField.docx";
        let remoteName = "TestDeleteFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFieldWithoutNodePath") + "/" + remoteName);
        let fieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldWithoutNodePathRequest(remoteName, fieldIndex, getRemoteDataFolder(action: "DeleteFieldWithoutNodePath"));
        super.getApi().deleteFieldWithoutNodePath(request);
    }
    

    func testDeleteParagraphFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteParagraphFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldsRequest(remoteName, "paragraphs/0", getRemoteDataFolder(action: "DeleteParagraphFields"));
        super.getApi().deleteFields(request);
    }
    

    func testDeleteParagraphFieldsWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteParagraphFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteParagraphFieldsWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "DeleteParagraphFieldsWithoutNodePath"));
        super.getApi().deleteFieldsWithoutNodePath(request);
    }
    

    func testDeleteSectionFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSectionFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSectionFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "DeleteSectionFields"));
        super.getApi().deleteFields(request);
    }
    

    func testDeleteSectionParagraphFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteSectionParagraphFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteSectionParagraphFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldsRequest(remoteName, "sections/0/paragraphs/0", getRemoteDataFolder(action: "DeleteSectionParagraphFields"));
        super.getApi().deleteFields(request);
    }
    

    func testDeleteDocumentFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestDeleteDocumentFields.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteDocumentFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFieldsRequest(remoteName, null, getRemoteDataFolder(action: "DeleteDocumentFields"));
        super.getApi().deleteFields(request);
    }
    

    func testUpdateDocumentFields() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestUpdateDocumentFields.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateDocumentFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFieldsRequest(remoteName, getRemoteDataFolder(action: "UpdateDocumentFields"));
        let actual = super.getApi().updateFields(request);
    }

    func testUpdateFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestUpdateFormField.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFormField") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        FormFieldTextInput body = FormFieldTextInput
                                      {
                                          Name = "FullName",
                                          Enabled = true,
                                          CalculateOnExit = true,
                                          StatusText = string.Empty,
                                          TextInputType = FormFieldTextInput.TextInputTypeEnum.Regular,
                                          TextInputDefault = string.Empty
                                      };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFormFieldRequest(remoteName, body, "sections/0", formfieldIndex, getRemoteDataFolder(action: "UpdateFormField"), destFileName: destFileName);
        FormFieldResponse actual = super.getApi().updateFormField(request);
        
        Assert.AreEqual("FullName", actual.FormField.Name);
        Assert.AreEqual(true, actual.FormField.Enabled);
        let formFieldTextInput = actual.FormField as FormFieldTextInput;
        Assert.IsTrue(formFieldTextInput != null, 
            "Incorrect type of formfield: {0} instead of {1}", 
            actual.FormField.GetType(), 
            typeof(FormFieldTextInput));
        Assert.AreEqual(FormFieldTextInput.TextInputTypeEnum.Regular, formFieldTextInput.TextInputType);
    }
    

    func testUpdateFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestUpdateFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateFormFieldWithoutNodePath") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        FormFieldTextInput body = FormFieldTextInput
        {
            Name = "FullName",
            Enabled = true,
            CalculateOnExit = true,
            StatusText = string.Empty,
            TextInputType = FormFieldTextInput.TextInputTypeEnum.Regular,
            TextInputDefault = string.Empty
        };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateFormFieldWithoutNodePathRequest(remoteName, body, formfieldIndex, getRemoteDataFolder(action: "UpdateFormFieldWithoutNodePath"), destFileName: destFileName);
        FormFieldResponse actual = super.getApi().updateFormFieldWithoutNodePath(request);
        Assert.AreEqual("FullName", actual.FormField.Name);
        Assert.AreEqual(true, actual.FormField.Enabled);
        let formFieldTextInput = actual.FormField as FormFieldTextInput;
        Assert.IsTrue(formFieldTextInput != null,
            "Incorrect type of formfield: {0} instead of {1}",
            actual.FormField.GetType(),
            typeof(FormFieldTextInput));
        Assert.AreEqual(FormFieldTextInput.TextInputTypeEnum.Regular, formFieldTextInput.TextInputType);
    }
    

    func testGetFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormField.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormField") + "/" + remoteName);
        int formfieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFormFieldRequest(remoteName, "sections/0", formfieldIndex, getRemoteDataFolder(action: "GetFormField"));
        FormFieldResponse actual = super.getApi().getFormField(request);
    }
    

    func testGetFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFieldWithoutNodePath") + "/" + remoteName);
        int formfieldIndex = 0;
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFormFieldWithoutNodePathRequest(remoteName, formfieldIndex, getRemoteDataFolder(action: "GetFormFieldWithoutNodePath"));
        FormFieldResponse actual = super.getApi().getFormFieldWithoutNodePath(request);
    }
    

    func testGetFormFields() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFields.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFields") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFormFieldsRequest(remoteName, "sections/0", getRemoteDataFolder(action: "GetFormFields"));
        FormFieldsResponse actual = super.getApi().getFormFields(request);
    }
    

    func testGetFormFieldsWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestGetFormFieldsWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetFormFieldsWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetFormFieldsWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetFormFieldsWithoutNodePath"));
        FormFieldsResponse actual = super.getApi().getFormFieldsWithoutNodePath(request);
    }
    

    func testInsertFormField() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertFormField.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFormField") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = FormFieldTextInput
                       {
                           Name = "FullName",
                           Enabled = true,
                           CalculateOnExit = true,
                           StatusText = string.Empty,
                           TextInputType = FormFieldTextInput.TextInputTypeEnum.Regular,
                           TextInputDefault = "123",
                           TextInputFormat = "UPPERCASE"
                       };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFormFieldRequest(remoteName, body, "sections/0/paragraphs/0", getRemoteDataFolder(action: "InsertFormField"), destFileName: destFileName);
        let actual = super.getApi().insertFormField(request);
    }
    

    func testInsertFormFieldWithoutNodePath() throws {
        let localName = "test_multi_pages.docx";
        let remoteName = "TestInsertFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertFormFieldWithoutNodePath") + "/" + remoteName);
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        let body = FormFieldTextInput
        {
            Name = "FullName",
            Enabled = true,
            CalculateOnExit = true,
            StatusText = string.Empty,
            TextInputType = FormFieldTextInput.TextInputTypeEnum.Regular,
            TextInputDefault = "123",
            TextInputFormat = "UPPERCASE"
        };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent("Common", isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertFormFieldWithoutNodePathRequest(remoteName, body, getRemoteDataFolder(action: "InsertFormFieldWithoutNodePath"), destFileName: destFileName);
        let actual = super.getApi().insertFormFieldWithoutNodePath(request);
    }
    

    func testDeleteFormField() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestDeleteFormField.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFormField") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFormFieldRequest(remoteName, "sections/0", formfieldIndex, getRemoteDataFolder(action: "DeleteFormField"), destFileName: destFileName);
        super.getApi().deleteFormField(request);
    }
    

    func testDeleteFormFieldWithoutNodePath() throws {
        let localName = "FormFilled.docx";
        let remoteName = "TestDeleteFormFieldWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteFormFieldWithoutNodePath") + "/" + remoteName);
        let formfieldIndex = 0;
        let destFileName = (BaseTestOutPath + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.fieldFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteFormFieldWithoutNodePathRequest(remoteName, formfieldIndex, getRemoteDataFolder(action: "DeleteFormFieldWithoutNodePath"), destFileName: destFileName);
        super.getApi().deleteFormFieldWithoutNodePath(request);
    }
}
