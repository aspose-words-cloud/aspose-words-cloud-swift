let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestProperty = DocumentPropertyCreateOrUpdate()
  .setValue(value: "Imran Anwar");
let createRequest = CreateOrUpdateDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "AsposeAuthor", property: requestProperty as! DocumentPropertyCreateOrUpdate);
_ = try api.createOrUpdateDocumentPropertyOnline(request: createRequest);