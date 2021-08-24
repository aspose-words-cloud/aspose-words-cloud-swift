let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteCommentsOnlineRequest(document: requestDocument);
_ = try api.deleteCommentsOnline(request: deleteRequest);