let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectImageDataRequest(name: "Sample.docx", index: 0);
_ = try api.getDocumentDrawingObjectImageData(request: request);