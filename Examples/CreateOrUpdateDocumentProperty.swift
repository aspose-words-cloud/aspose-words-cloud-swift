let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProperty = DocumentPropertyCreateOrUpdate()
  .setValue(value: "Imran Anwar");
let createRequest = CreateOrUpdateDocumentPropertyRequest(name: "Sample.docx", propertyName: "AsposeAuthor", property: requestProperty as! DocumentPropertyCreateOrUpdate);
_ = try api.createOrUpdateDocumentProperty(request: createRequest);