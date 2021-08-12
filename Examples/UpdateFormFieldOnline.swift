let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormField = FormFieldTextInput();
requestFormField.setName(name: "FullName");
requestFormField.setEnabled(enabled: true);
requestFormField.setCalculateOnExit(calculateOnExit: true);
requestFormField.setStatusText(statusText: "");
requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
requestFormField.setTextInputDefault(textInputDefault: "No name");
let updateRequest = UpdateFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, formField: requestFormField, index: 0, nodePath: "sections/0");
_ = try api.updateFormFieldOnline(request: updateRequest);