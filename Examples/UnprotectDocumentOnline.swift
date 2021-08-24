let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestProtectionRequest = ProtectionRequest()
  .setPassword(password: "aspose");
let unprotectRequest = UnprotectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
_ = try api.unprotectDocumentOnline(request: unprotectRequest);