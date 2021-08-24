let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let deleteRequest = DeleteFootnoteOnlineRequest(document: requestDocument, index: 0);
_ = try api.deleteFootnoteOnline(request: deleteRequest);