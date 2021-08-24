let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteTableOnlineRequest(document: requestDocument, index: 1);
_ = try api.deleteTableOnline(request: deleteRequest);