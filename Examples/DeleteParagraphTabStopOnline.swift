let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteParagraphTabStopOnlineRequest(document: requestDocument, position: 72.0, index: 0);
_ = try api.deleteParagraphTabStopOnline(request: deleteRequest);