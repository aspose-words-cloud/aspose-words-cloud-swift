let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestDocument = InputStream(url: URL(string: "Sample.doc"))!;
let insertRequest = InsertHeaderFooterOnlineRequest(document: requestDocument, sectionPath: "", headerFooterType: "FooterEven");
_ = try api.insertHeaderFooterOnline(request: insertRequest);