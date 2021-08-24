let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestFormField = FormFieldTextInput()
  .setTextInputDefault(textInputDefault: "No name")
  .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
  .setCalculateOnExit(calculateOnExit: true)
  .setEnabled(enabled: true)
  .setName(name: "FullName")
  .setStatusText(statusText: "");
let updateRequest = UpdateFormFieldOnlineRequest(document: requestDocument, formField: requestFormField as! FormFieldTextInput, index: 0, nodePath: "sections/0");
_ = try api.updateFormFieldOnline(request: updateRequest);