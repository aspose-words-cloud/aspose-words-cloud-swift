let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetHeaderFooterOfSectionOnlineRequest(document: requestDocument, headerFooterIndex: 0, sectionIndex: 0);
_ = try api.getHeaderFooterOfSectionOnline(request: request);