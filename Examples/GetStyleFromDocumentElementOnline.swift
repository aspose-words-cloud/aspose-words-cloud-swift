let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetStyleFromDocumentElementOnlineRequest(document: requestDocument, styledNodePath: "paragraphs/1/paragraphFormat");
_ = try api.getStyleFromDocumentElementOnline(request: request);