let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let deleteRequest = DeleteHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "", index: 0);
_ = try api.deleteHeaderFooterOnline(request: deleteRequest);