let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let deleteRequest = DeleteHeadersFootersOnlineRequest(document: requestDocument, sectionPath: "");
_ = try api.deleteHeadersFootersOnline(request: deleteRequest);