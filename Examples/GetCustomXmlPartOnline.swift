let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.docx"))!;
let request = GetCustomXmlPartOnlineRequest(document: requestDocument, customXmlPartIndex: 0);
_ = try api.getCustomXmlPartOnline(request: request);