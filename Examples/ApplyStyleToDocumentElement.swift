let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleApply = StyleApply()
  .setStyleName(styleName: "Heading 1");
let applyStyleRequest = ApplyStyleToDocumentElementRequest(name: "Sample.docx", styledNodePath: "paragraphs/1/paragraphFormat", styleApply: requestStyleApply);
_ = try api.applyStyleToDocumentElement(request: applyStyleRequest);