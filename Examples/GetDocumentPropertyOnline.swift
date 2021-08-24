let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetDocumentPropertyOnlineRequest(document: requestDocument, propertyName: "Author");
_ = try api.getDocumentPropertyOnline(request: request);