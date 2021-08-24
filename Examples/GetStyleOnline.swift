let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetStyleOnlineRequest(document: requestDocument, styleName: "Heading 1");
_ = try api.getStyleOnline(request: request);