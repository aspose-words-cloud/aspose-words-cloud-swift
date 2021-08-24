let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let requestProtectionRequest = ProtectionRequest()
  .setNewPassword(newPassword: "123");
let protectRequest = ProtectDocumentOnlineRequest(document: requestDocument, protectionRequest: requestProtectionRequest);
_ = try api.protectDocumentOnline(request: protectRequest);