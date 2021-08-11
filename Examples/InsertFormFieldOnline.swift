let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormField = FormFieldTextInput();
requestFormField.setName(name: "FullName");
requestFormField.setEnabled(enabled: true);
requestFormField.setCalculateOnExit(calculateOnExit: true);
requestFormField.setStatusText(statusText: "");
requestFormField.setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular);
requestFormField.setTextInputDefault(textInputDefault: "123");
requestFormField.setTextInputFormat(textInputFormat: "UPPERCASE");
let insertRequest = InsertFormFieldOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("/FormFilled.docx", isDirectory: false))!, formField: requestFormField, nodePath: "sections/0/paragraphs/0");
_ = try api.insertFormFieldOnline(request: insertRequest);