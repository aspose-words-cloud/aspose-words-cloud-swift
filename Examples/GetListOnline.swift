let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let request = GetListOnlineRequest(document: requestDocument, listId: 1);
_ = try api.getListOnline(request: request);