let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetHeaderFooterOnlineRequest(document: requestDocument, headerFooterIndex: 0);
_ = try api.getHeaderFooterOnline(request: request);