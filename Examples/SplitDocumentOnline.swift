let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let splitRequest = SplitDocumentOnlineRequest(document: requestDocument, format: "text", destFileName: "/TestSplitDocument.text", from: 1, to: 2);
_ = try api.splitDocumentOnline(request: splitRequest);