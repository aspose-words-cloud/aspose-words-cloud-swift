let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetFormFieldOnlineRequest(document: requestDocument, index: 0, nodePath: "sections/0");
_ = try api.getFormFieldOnline(request: request);