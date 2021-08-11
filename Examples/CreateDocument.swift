let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let createRequest = CreateDocumentRequest(fileName: "Sample.docx");
_ = try api.createDocument(request: createRequest);