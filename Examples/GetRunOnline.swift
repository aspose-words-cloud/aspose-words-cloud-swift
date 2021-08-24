let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetRunOnlineRequest(document: requestDocument, paragraphPath: "paragraphs/0", index: 0);
_ = try api.getRunOnline(request: request);