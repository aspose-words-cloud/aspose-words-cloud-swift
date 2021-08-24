let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetParagraphListFormatOnlineRequest(document: requestDocument, index: 0);
_ = try api.getParagraphListFormatOnline(request: request);