let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentFieldNamesRequest(name: "Sample.docx");
_ = try api.getDocumentFieldNames(request: request);