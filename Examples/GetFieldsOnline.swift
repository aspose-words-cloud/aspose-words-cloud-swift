let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetFieldsOnlineRequest(document: requestDocument, nodePath: "sections/0");
_ = try api.getFieldsOnline(request: request);