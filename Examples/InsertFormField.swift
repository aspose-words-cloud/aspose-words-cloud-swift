let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormField = FormFieldTextInput()
  .setTextInputDefault(textInputDefault: "123")
  .setTextInputFormat(textInputFormat: "UPPERCASE")
  .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
  .setCalculateOnExit(calculateOnExit: true)
  .setEnabled(enabled: true)
  .setName(name: "FullName")
  .setStatusText(statusText: "");
let insertRequest = InsertFormFieldRequest(name: "Sample.docx", formField: requestFormField as! FormFieldTextInput);
_ = try api.insertFormField(request: insertRequest);