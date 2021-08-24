let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProtectionRequest = ProtectionRequest()
  .setPassword(password: "123")
  .setProtectionType(protectionType: "ReadOnly");
let protectRequest = ProtectDocumentRequest(name: "Sample.docx", protectionRequest: requestProtectionRequest);
_ = try api.protectDocument(request: protectRequest);