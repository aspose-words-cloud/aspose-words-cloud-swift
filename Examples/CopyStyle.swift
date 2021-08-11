let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleCopy = StyleCopy();
requestStyleCopy.setStyleName(styleName: "Heading 1");
let copyRequest = CopyStyleRequest(name: "Sample.docx", styleCopy: requestStyleCopy);
_ = try api.copyStyle(request: copyRequest);