let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetRunsOnlineRequest(document: requestDocument, paragraphPath: "sections/0/paragraphs/0");
_ = try api.getRunsOnline(request: request);