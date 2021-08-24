let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetBordersOnlineRequest(document: requestDocument, nodePath: "tables/1/rows/0/cells/0");
_ = try api.getBordersOnline(request: request);