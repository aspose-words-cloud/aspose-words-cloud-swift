let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteWatermarkOnlineRequest(document: requestDocument);
_ = try api.deleteWatermarkOnline(request: deleteRequest);