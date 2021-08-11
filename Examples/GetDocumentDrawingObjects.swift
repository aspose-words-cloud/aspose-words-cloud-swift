let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetDocumentDrawingObjectsRequest(name: "Sample.docx");
_ = try api.getDocumentDrawingObjects(request: request);