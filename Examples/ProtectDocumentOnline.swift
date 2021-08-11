let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.setNewPassword(newPassword: "123");
let protectRequest = ProtectDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, protectionRequest: requestProtectionRequest);
_ = try api.protectDocumentOnline(request: protectRequest);