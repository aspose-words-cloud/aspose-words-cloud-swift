let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestFormField = FormFieldTextInput()
  .setTextInputDefault(textInputDefault: "No name")
  .setTextInputType(textInputType: FormFieldTextInput.TextInputType.regular)
  .setCalculateOnExit(calculateOnExit: true)
  .setEnabled(enabled: true)
  .setName(name: "FullName")
  .setStatusText(statusText: "");
let updateRequest = UpdateFormFieldRequest(name: "Sample.docx", index: 0, formField: requestFormField as! FormFieldTextInput);
_ = try api.updateFormField(request: updateRequest);