let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let insertRequest = InsertHeaderFooterOnlineRequest(document: InputStream(url: currentDir!.appendingPathComponent("DocumentElements/HeaderFooters/HeadersFooters.doc", isDirectory: false))!, sectionPath: "", headerFooterType: "FooterEven");
_ = try api.insertHeaderFooterOnline(request: insertRequest);