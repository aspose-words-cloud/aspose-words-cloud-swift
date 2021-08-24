let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let classifyRequest = ClassifyDocumentOnlineRequest(document: requestDocument, bestClassesCount: "3");
_ = try api.classifyDocumentOnline(request: classifyRequest);