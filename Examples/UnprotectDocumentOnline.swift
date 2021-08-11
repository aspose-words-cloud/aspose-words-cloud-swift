let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestProtectionRequest = ProtectionRequest();
requestProtectionRequest.setPassword(password: "aspose");
let unprotectRequest = UnprotectDocumentOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, protectionRequest: requestProtectionRequest);
_ = try api.unprotectDocumentOnline(request: unprotectRequest);