let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestStyleCopy = StyleCopy()
  .setStyleName(styleName: "Heading 1");
let copyRequest = CopyStyleOnlineRequest(document: requestDocument, styleCopy: requestStyleCopy);
_ = try api.copyStyleOnline(request: copyRequest);