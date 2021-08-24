let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let requestListInsert = ListInsert()
  .setTemplate(template: ListInsert.Template.outlineLegal);
let insertRequest = InsertListOnlineRequest(document: requestDocument, listInsert: requestListInsert);
_ = try api.insertListOnline(request: insertRequest);