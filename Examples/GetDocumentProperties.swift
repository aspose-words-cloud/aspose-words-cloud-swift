let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentPropertiesRequest(name: "Sample.docx");
_ = try api.getDocumentProperties(request: request);