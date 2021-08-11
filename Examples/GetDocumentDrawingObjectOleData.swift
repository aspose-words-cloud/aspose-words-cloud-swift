let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectOleDataRequest(name: "Sample.docx", index: 0);
_ = try api.getDocumentDrawingObjectOleData(request: request);