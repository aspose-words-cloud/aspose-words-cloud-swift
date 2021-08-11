let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentPropertyRequest(name: "Sample.docx", propertyName: "Author");
_ = try api.getDocumentProperty(request: request);