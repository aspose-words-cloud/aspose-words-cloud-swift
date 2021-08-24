let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteDrawingObjectOnlineRequest(document: requestDocument, index: 0);
_ = try api.deleteDrawingObjectOnline(request: deleteRequest);