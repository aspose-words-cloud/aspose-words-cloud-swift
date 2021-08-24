let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteAllParagraphTabStopsOnlineRequest(document: requestDocument, index: 0);
_ = try api.deleteAllParagraphTabStopsOnline(request: deleteRequest);