let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetHeaderFootersOnlineRequest(document: requestDocument, sectionPath: "");
_ = try api.getHeaderFootersOnline(request: request);