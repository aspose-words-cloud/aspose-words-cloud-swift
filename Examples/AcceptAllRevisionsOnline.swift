let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let acceptRequest = AcceptAllRevisionsOnlineRequest(document: requestDocument);
_ = try api.acceptAllRevisionsOnline(request: acceptRequest);