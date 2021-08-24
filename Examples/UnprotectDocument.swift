let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProtectionRequest = ProtectionRequest()
  .setPassword(password: "aspose");
let unprotectRequest = UnprotectDocumentRequest(name: "Sample.docx", protectionRequest: requestProtectionRequest);
_ = try api.unprotectDocument(request: unprotectRequest);