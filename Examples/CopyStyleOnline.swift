let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleCopy = StyleCopy();
requestStyleCopy.setStyleName(styleName: "Heading 1");
let copyRequest = CopyStyleOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, styleCopy: requestStyleCopy);
_ = try api.copyStyleOnline(request: copyRequest);