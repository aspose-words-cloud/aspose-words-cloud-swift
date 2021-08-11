let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let remoteFileName = "Sample.docx";

let requestFormField = FormFieldTextInput();
requestFormField.setName(name: "FullName");
requestFormField.setEnabled(enabled: true);
requestFormField.setCalculateOnExit(calculateOnExit: true);
requestFormField.setStatusText(statusText: "");
requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
requestFormField.setTextInputDefault(textInputDefault: "No name");
let updateRequest = UpdateFormFieldRequest(name: remoteFileName, index: 0, formField: requestFormField, destFileName: remoteFileName);
_ = try api.updateFormField(request: updateRequest);