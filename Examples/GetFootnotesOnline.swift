let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetFootnotesOnlineRequest(document: requestDocument);
_ = try api.getFootnotesOnline(request: request);