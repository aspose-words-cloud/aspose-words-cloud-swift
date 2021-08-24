let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let deleteRequest = DeleteRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/1", index: 0);
_ = try api.deleteRunOnline(request: deleteRequest);