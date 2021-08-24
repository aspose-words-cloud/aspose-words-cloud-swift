let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let deleteRequest = DeleteFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0/paragraphs/0");
_ = try api.deleteFieldOnline(request: deleteRequest);