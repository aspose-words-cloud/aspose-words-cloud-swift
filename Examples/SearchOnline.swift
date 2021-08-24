let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let searchRequest = SearchOnlineRequest(document: requestDocument, pattern: "aspose");
_ = try api.searchOnline(request: searchRequest);