let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentRequest(documentName: "Sample.docx");
_ = try api.getDocument(request: request);