let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetCustomXmlPartsOnlineRequest(document: requestDocument);
_ = try api.getCustomXmlPartsOnline(request: request);