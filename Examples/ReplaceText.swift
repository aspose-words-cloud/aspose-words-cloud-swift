let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReplaceText = ReplaceTextParameters()
  .setNewValue(newValue: "Aspose testing")
  .setOldValue(oldValue: "Testing");
let replaceRequest = ReplaceTextRequest(name: "Sample.docx", replaceText: requestReplaceText);
_ = try api.replaceText(request: replaceRequest);