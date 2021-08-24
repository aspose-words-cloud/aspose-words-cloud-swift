let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let rejectRequest = RejectAllRevisionsOnlineRequest(document: requestDocument);
_ = try api.rejectAllRevisionsOnline(request: rejectRequest);