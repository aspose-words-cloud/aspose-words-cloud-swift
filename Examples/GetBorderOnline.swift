let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetBorderOnlineRequest(document: requestDocument, borderType: "left", nodePath: "tables/1/rows/0/cells/0");
_ = try api.getBorderOnline(request: request);