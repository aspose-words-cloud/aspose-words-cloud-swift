let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentProtectionRequest(name: "Sample.docx");
_ = try api.getDocumentProtection(request: request);