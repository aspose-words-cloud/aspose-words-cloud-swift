let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetFootnoteOnlineRequest(document: requestDocument, index: 0);
_ = try api.getFootnoteOnline(request: request);