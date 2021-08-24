let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestReplaceText = ReplaceTextParameters()
  .setNewValue(newValue: "aspose new")
  .setOldValue(oldValue: "aspose");
let replaceRequest = ReplaceTextOnlineRequest(document: requestDocument, replaceText: requestReplaceText);
_ = try api.replaceTextOnline(request: replaceRequest);