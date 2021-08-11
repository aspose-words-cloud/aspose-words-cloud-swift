let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReplaceText = ReplaceTextParameters();
requestReplaceText.setOldValue(oldValue: "aspose");
requestReplaceText.setNewValue(newValue: "aspose new");
let replaceRequest = ReplaceTextOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, replaceText: requestReplaceText);
_ = try api.replaceTextOnline(request: replaceRequest);