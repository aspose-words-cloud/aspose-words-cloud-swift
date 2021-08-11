let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentHyperlinksRequest(name: "Sample.docx");
_ = try api.getDocumentHyperlinks(request: request);