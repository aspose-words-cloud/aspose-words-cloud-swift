let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetRangeTextOnlineRequest(document: requestDocument, rangeStartIdentifier: "id0.0.0", rangeEndIdentifier: "id0.0.1");
_ = try api.getRangeTextOnline(request: request);