let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReplaceText = ReplaceTextParameters();
requestReplaceText.setOldValue(oldValue: "Testing");
requestReplaceText.setNewValue(newValue: "Aspose testing");
let replaceRequest = ReplaceTextRequest(name: "Sample.docx", replaceText: requestReplaceText);
_ = try api.replaceText(request: replaceRequest);