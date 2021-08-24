let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestStyleApply = StyleApply()
  .setStyleName(styleName: "Heading 1");
let applyStyleRequest = ApplyStyleToDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
_ = try api.applyStyleToDocumentElementOnline(request: applyStyleRequest);