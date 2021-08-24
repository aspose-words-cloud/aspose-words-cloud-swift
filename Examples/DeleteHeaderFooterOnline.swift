let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let deleteRequest = DeleteHeaderFooterOnlineRequest(document: requestDocument, sectionPath: "", index: 0);
_ = try api.deleteHeaderFooterOnline(request: deleteRequest);