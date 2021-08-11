let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectByIndexRequest(name: "Sample.docx", index: 0);
_ = try api.getDocumentDrawingObjectByIndex(request: request);