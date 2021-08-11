let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let request = GetHeaderFooterOfSectionOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, headerFooterIndex: 0, sectionIndex: 0);
_ = try api.getHeaderFooterOfSectionOnline(request: request);