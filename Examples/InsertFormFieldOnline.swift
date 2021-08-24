let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestFormField = FormFieldTextInput()
  .setTextInputDefault(textInputDefault: "123")
  .setTextInputFormat(textInputFormat: "UPPERCASE")
  .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
  .setCalculateOnExit(calculateOnExit: true)
  .setEnabled(enabled: true)
  .setName(name: "FullName")
  .setStatusText(statusText: "");
let insertRequest = InsertFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, nodePath: "sections/0/paragraphs/0");
_ = try api.insertFormFieldOnline(request: insertRequest);