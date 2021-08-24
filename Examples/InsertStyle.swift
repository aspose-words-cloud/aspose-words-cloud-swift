let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestStyleInsert = StyleInsert()
  .setStyleName(styleName: "My Style")
  .setStyleType(styleType: StyleInsert.StyleType.paragraph);
let insertRequest = InsertStyleRequest(name: "Sample.docx", styleInsert: requestStyleInsert);
_ = try api.insertStyle(request: insertRequest);