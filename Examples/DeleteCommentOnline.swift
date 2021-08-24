let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteCommentOnlineRequest(document: requestDocument, commentIndex: 0);
_ = try api.deleteCommentOnline(request: deleteRequest);