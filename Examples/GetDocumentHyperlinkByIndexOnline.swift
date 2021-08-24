let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetDocumentHyperlinkByIndexOnlineRequest(document: requestDocument, hyperlinkIndex: 0);
_ = try api.getDocumentHyperlinkByIndexOnline(request: request);