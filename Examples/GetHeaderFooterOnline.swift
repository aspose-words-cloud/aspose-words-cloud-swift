let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, headerFooterIndex: 0);
_ = try api.getHeaderFooterOnline(request: request);