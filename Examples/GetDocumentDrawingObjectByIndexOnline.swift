let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetDocumentDrawingObjectByIndexOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
_ = try api.getDocumentDrawingObjectByIndexOnline(request: request);