let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestStyleInsert = StyleInsert()
  .setStyleName(styleName: "My Style")
  .setStyleType(styleType: StyleInsert.StyleType.paragraph);
let insertRequest = InsertStyleOnlineRequest(document: requestDocument, styleInsert: requestStyleInsert);
_ = try api.insertStyleOnline(request: insertRequest);